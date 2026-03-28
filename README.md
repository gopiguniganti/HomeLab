# 🖥️ HomeLab

A self-hosted infrastructure stack running on an HP ProDesk mini PC, managing Docker-based services for media, productivity, AI, monitoring, and networking — all behind a reverse proxy with VPN routing.

---

## 🏗️ Hardware

- Host: HP ProDesk Mini PC
- OS: Ubuntu Server
- Orchestration: Docker + Docker Compose
- Reverse Proxy: Nginx Proxy Manager
- VPN: Gluetun

---

## 📦 Stack Overview

### 🎬 Media Server

This stack covers the self-hosted media automation pipeline from indexing to playback.

- Jellyfin — media server and streaming
- Sonarr — TV show management
- Radarr — movie management
- Lidarr — music management
- Bazarr — subtitle management
- Prowlarr — indexer manager
- qBittorrent — torrent client (via VPN)
- NZBGet — Usenet client (via VPN)
- FlareSolverr — Cloudflare bypass
- Recyclarr — quality profile sync
- Gluetun — VPN gateway container

### 🧠 AI & Search

- Open WebUI — local LLM interface
- SearXNG — private meta search engine
- n8n — workflow automation

### 📸 Productivity & Documents

- Immich — self-hosted photo backup and gallery
- Paperless-ngx — document management and OCR
- Actual Budget — personal finance tracking
- FreshRSS — RSS feed aggregator
- FileBrowser — web-based file manager
- BentoPDF — PDF tools

### 📊 Monitoring & Observability

- Scrutiny — S.M.A.R.T. disk health monitoring
- ntopng — network traffic analysis
- Speedtest Tracker — ISP speed monitoring
- Deunhealth — unhealthy container auto-restart

### 🌐 Network & Dashboard

- Nginx Proxy Manager — reverse proxy and SSL termination
- Glance — self-hosted dashboard
- Gotify — push notification server
- Arcane — Arr suite UI manager

### 💪 Fitness

- SparkyFitness — self-hosted fitness and nutrition tracker

---

## 🗂️ Repository Structure

```text
HomeLab/
├── stacks/              # Exported Docker Compose snapshots
│   ├── arcane/
│   ├── freshrss/
│   ├── glance/
│   ├── immich-app/
│   ├── media/
│   ├── ntopng/
│   ├── paperless/
│   ├── sparkyfitness/
│   ├── speedtest/
│   └── yubal-app/
└── README.md            # Project overview
```

Each stack folder contains a compose file that can be used to recreate or review the deployment.

---

## 🚀 Getting Started

### Prerequisites

- Docker and Docker Compose installed
- A domain name for reverse proxy SSL
- VPN provider credentials for Gluetun

### Clone and run

```bash
git clone https://github.com/gopiguniganti/HomeLab.git
cd HomeLab
```

To bring up a stack:

```bash
cd stacks/media
docker compose up -d
```

---

## 🔒 Security Notes

- Services are intended to run behind Nginx Proxy Manager with SSL.
- Download clients such as qBittorrent and NZBGet are routed through Gluetun.
- Avoid committing secrets; keep sensitive values in local environment files or secrets management.
- This repository currently focuses on compose definitions and stack snapshots.

---

## 📝 License

MIT — feel free to use and adapt for your own homelab.
