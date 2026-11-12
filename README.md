# 📺 IPTV — Free M3U Playlists

> 🌐 **Landing page:** [https://albus-percival.github.io/iptv/](https://albus-percival.github.io/iptv/)

Free **M3U playlists** of publicly available live TV streams. No sign-up, no fees — point your IPTV player at a playlist URL and start watching.

## Playlists

| Playlist | Description |
|----------|-------------|
| [`All-Channels.m3u`](https://albus-percival.github.io/iptv/All-Channels.m3u) | Every channel from every region and language. |
| [`Eng-Hin.m3u`](https://albus-percival.github.io/iptv/Eng-Hin.m3u) | Curated English & Hindi channels. |

Playlist URLs (always load the latest version):

```
https://albus-percival.github.io/iptv/All-Channels.m3u
https://albus-percival.github.io/iptv/Eng-Hin.m3u
```

Per-playlist stats live in [`All-Channels.stats.json`](All-Channels.stats.json) and [`Eng-Hin.stats.json`](Eng-Hin.stats.json), and are shown on the [landing page](https://albus-percival.github.io/iptv/).

## Preview

Peek inside a playlist in your browser before adding it to a player with the [M3U Previewer](https://albus-percival.github.io/iptv/m3u-previewer.html) — a fully client-side viewer with global search, per-column filters, sorting and dark mode. Playlists are parsed entirely in the browser; nothing is uploaded anywhere.

Open one of these playlists straight into the previewer:

- [Preview All-Channels.m3u](https://albus-percival.github.io/iptv/m3u-previewer.html?open=https://albus-percival.github.io/iptv/All-Channels.m3u)
- [Preview Eng-Hin.m3u](https://albus-percival.github.io/iptv/m3u-previewer.html?open=https://albus-percival.github.io/iptv/Eng-Hin.m3u)

Any playlist URL can be auto-loaded this way with the `open` query parameter, e.g. `https://albus-percival.github.io/iptv/m3u-previewer.html?open=https://example.com/playlist.m3u`.

## Usage

1. Copy a playlist URL above.
2. Open your IPTV player ([VLC](https://www.videolan.org/vlc/), [Hashtag IPTV](https://app.hashtagiptv.com/) (Web Player), [TiviMate](https://tivimate.com/) (Android TV), [Kodi](https://kodi.tv/), [mpv](https://mpv.io/) — anything M3U-capable) and add it as a remote playlist, e.g. `vlc https://albus-percival.github.io/iptv/Eng-Hin.m3u`.
3. Browse by category groups and watch. If a stream is down, try its duplicate entry.

## Credits

All data comes from the **[iptv-org](https://github.com/iptv-org)** projects. This project only modifies iptv-org data for customized playlists.

## Disclaimer

No streams are hosted, uploaded, or distributed by this repository. Availability depends entirely on the original source providers and may change without notice. Use at your own discretion and comply with the laws of your region.
