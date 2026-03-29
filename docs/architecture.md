# Architecture overview

```mermaid
flowchart LR
    User[User] --> NPM[Nginx Proxy Manager]
    NPM --> Jellyfin[Jellyfin]
    NPM --> Immich[Immich]
    NPM --> FreshRSS[FreshRSS]
    NPM --> Glance[Glance]

    Gluetun[Gluetun VPN] --> QB[qBittorrent]
    Gluetun --> NZB[NZBGet]
```

## Design goals
- Keep services containerized and easy to recreate.
- Route public access through a single reverse proxy.
- Send torrent and usenet traffic through the VPN gateway.
- Store stack snapshots and notes in source control for portability.
