# 📺 Albus IPTV — Free M3U Playlists

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-22d3ee?style=flat-square&logo=github)](https://albus-percival.github.io/iptv/)
[![License](https://img.shields.io/badge/License-MIT-6c8cff?style=flat-square)](LICENSE)
[![Channels](https://img.shields.io/badge/Channels-19%2C347%2B-2ea44f?style=flat-square)](#playlists)

Free, curated **M3U playlists** of publicly available live TV streams — news, sports, movies, kids, music, and more. No sign-up, no account, no fees. Just point your favourite IPTV player at a playlist URL and start watching.

> 🌐 **Landing page:** [https://albus-percival.github.io/iptv/](https://albus-percival.github.io/iptv/)

---

## 📋 Playlists

| Playlist | Channels | Size | Description |
|----------|----------|------|-------------|
| [`All-Channels.m3u`](All-Channels.m3u) | **19,347** | 4.3 MB | The complete collection — every channel, every region, every language. |
| [`Eng-Hin.m3u`](Eng-Hin.m3u) | **7,720** | 1.7 MB | Curated English & Hindi channels, ideal for viewers in India / the Indian subcontinent. |

### Raw Playlist URLs

Use these URLs directly in your IPTV player (they always load the latest version):

```
https://albus-percival.github.io/iptv/All-Channels.m3u
https://albus-percival.github.io/iptv/Eng-Hin.m3u
```

Or, if you prefer the raw GitHub content URLs:

```
https://raw.githubusercontent.com/albus-percival/iptv/main/All-Channels.m3u
https://raw.githubusercontent.com/albus-percival/iptv/main/Eng-Hin.m3u
```

### Categories Included

News · Sports · Movies · Series · Entertainment · Kids · Animation · Music · Documentary · Comedy · Religious · Education · Lifestyle · Cooking · Travel · Business · Science · Weather · Auto · Classic · Culture · Outdoor · Family · and more.

Channels are tagged with `group-title`, `tvg-id`, `tvg-name` and `tvg-logo`, so they appear **grouped by category with logos** in players like TiviMate, IPTV Smarters, and Kodi. Many channels include multiple source links, so if one stream is down you can try a duplicate entry.

---

## 🚀 Quick Start

1. **Copy a playlist URL** from above (or copy it via the [landing page](https://albus-percival.github.io/iptv/)).
2. **Open your IPTV player** and choose *Add Playlist* / *Remote Playlist* / *Open Network Stream*, then paste the URL.
3. **Start watching** — browse by category groups and play any channel.

### Watch instantly in VLC

```bash
# All channels
vlc https://albus-percival.github.io/iptv/All-Channels.m3u

# English & Hindi channels
vlc https://albus-percival.github.io/iptv/Eng-Hin.m3u
```

Or download a file and open it directly:

```bash
curl -O https://albus-percival.github.io/iptv/Eng-Hin.m3u
vlc Eng-Hin.m3u
```

### Watch in a browser (no install)

Paste a playlist URL into any web-based M3U/M3U8-capable player (e.g. `iptv-org.github.io`, `m3u8play.com`, or the `mpv`/`hls.js`-based web players). Note that a few entries require a custom user-agent (see below).

---

## 📱 Compatible Players

Any app that supports the **M3U / M3U8** format works, including:

| Player | Platform |
|--------|----------|
| [VLC](https://www.videolan.org/vlc/) | Windows · macOS · Linux · Android · iOS |
| [TiviMate](https://tivimate.com/) | Android TV · Fire TV |
| [IPTV Smarters Pro](https://www.iptvsmarters.com/) | Android · iOS |
| [Kodi](https://kodi.tv/) (PVR IPTV Simple Client) | All platforms |
| [OTT Navigator](https://ott-nav.com/) | Android · Android TV |
| [mpv](https://mpv.io/) | Windows · macOS · Linux |
| [Hypnotix](https://github.com/webmdb/hypnotix) | Linux |

> ⚙️ Some entries include a `#EXTVLCOPT:http-user-agent=...` directive. Players built on LibVLC (VLC, TiviMate, OTT Navigator) honor this automatically; others may ignore it, and those specific streams may fail. If a stream doesn't play, try VLC.

---

## 🔄 Updates

- Playlists are regenerated regularly and pushed to the `main` branch.
- Because playlist URLs point at the live files (GitHub Pages / raw.githubusercontent), **your player re-downloads the latest channels automatically** on refresh — no need to change the URL.
- Each file is stamped with its generation date in the header comment (`# Playlist generated on ...`).

---

## 📁 Repository Structure

```
iptv/
├── All-Channels.m3u   # Complete worldwide playlist (19,347 channels)
├── Eng-Hin.m3u        # English & Hindi curated playlist (7,720 channels)
├── index.html         # GitHub Pages landing page
└── README.md          # This file
```

---

## ⚠️ Disclaimer

This repository aggregates **publicly available, free-to-air streams** found on the internet (e.g. from [iptv-org](https://github.com/iptv-org/iptv) and similar public community projects). 

- **No streams are hosted, uploaded, or distributed by this repository.**
- The maintainers do not guarantee the availability, quality, or legality of any stream.
- Streams may go offline without notice — availability depends entirely on the original source providers.
- If you are a content provider and believe a stream infringes your rights, open an [issue](https://github.com/albus-percival/iptv/issues) and the offending entry will be removed promptly.

Use at your own discretion and comply with the laws and regulations of your region.

---

## 🙏 Credits

All data comes from the **[iptv-org](https://github.com/iptv-org)** projects — a community effort that collects, verifies and maintains publicly available live TV streams from around the world.

This project only **modifies data from iptv-org** to build customized playlists (such as the English & Hindi selection in [Eng-Hin.m3u](Eng-Hin.m3u)). Full credit for the underlying stream data belongs to [iptv-org/iptv](https://github.com/iptv-org/iptv) and its contributors — please star and support their repository if you find these playlists useful.

---

## 📄 License

The playlist files and documentation in this repository are released under the [MIT License](LICENSE).
