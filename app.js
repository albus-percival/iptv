/* Albus IPTV — loads playlist stats from *.stats.json and renders them */

const fmt = (n) => n.toLocaleString('en-US');

const cleanDate = (d) => d.replace(/[[\]]/g, '');

async function loadStats(section) {
	const url = section.dataset.stats;
	let data;
	try {
		const res = await fetch(url);
		if (!res.ok) return;
		data = await res.json();
	} catch (err) {
		return; // stats unavailable (e.g. opened via file://) — leave sections empty
	}

	renderStats(section, data);
	renderGroups(section, data);
}

function renderStats(section, d) {
	const items = [
		[fmt(d.entries), 'entries'],
		[fmt(d.channels), 'channels'],
		[fmt(d.streams), 'streams'],
		[fmt(d.groups), 'groups'],
		[cleanDate(d.date), 'updated'],
	];
	if (Array.isArray(d.languages)) {
		items.push([d.languages.map((l) => l.toUpperCase()).join(' · '), 'languages']);
	}

	section.querySelector('.stats').innerHTML = items
		.map(([v, k]) => `<li><b>${v}</b><small>${k}</small></li>`)
		.join('');
}

function renderGroups(section, d) {
	const details = section.querySelector('.groups');
	if (!d.byGroup) return;

	const rows = Object.entries(d.byGroup)
		.sort((a, b) => b[1] - a[1])
		.map(([group, count]) => `<tr><td>${group}</td><td>${fmt(count)}</td></tr>`)
		.join('');

	details.querySelector('table').innerHTML =
		`<tr><th>Category</th><th>Entries</th></tr>` + rows;
	details.hidden = false;
}

/* Copy playlist URL buttons */
document.querySelectorAll('.copy').forEach((btn) => {
	btn.addEventListener('click', async () => {
		const url = new URL(btn.dataset.file, window.location.href).href;
		try {
			await navigator.clipboard.writeText(url);
			btn.textContent = 'Copied!';
		} catch (err) {
			window.prompt('Copy this URL:', url);
		}
		setTimeout(() => (btn.textContent = 'Copy URL'), 2000);
	});
});

document.querySelectorAll('.playlist[data-stats]').forEach(loadStats);
