# 🖥️ HomeLab

A polished collection of self-hosted Docker stacks for media, automation, productivity, monitoring, and networking — running on an HP ProDesk mini PC and documented for easy reuse.

---

## ✨ What this repo is

This repository is a practical HomeLab archive and reference project. It includes:

- exported Docker Compose snapshots for the services running on the host
- a simple overview of the stack categories and architecture
- helper scripts and templates to make the setup easier to manage

---

## 🏗️ Environment

- Host: HP ProDesk Mini PC
- OS: Ubuntu Server
- Orchestration: Docker + Docker Compose
- Reverse Proxy: Nginx Proxy Manager
- VPN: Gluetun

---

## 📦 Stack highlights

### Media
- Jellyfin
- Sonarr
- Radarr
- Lidarr
- Bazarr
- Prowlarr
- qBittorrent
- NZBGet
- FlareSolverr
- Recyclarr
- Gluetun

### AI & automation
- Open WebUI
- SearXNG
- n8n

### Productivity
- Immich
- Paperless-ngx
- Actual Budget
- FreshRSS
- FileBrowser
- BentoPDF

### Monitoring & networking
- Scrutiny
- ntopng
- Speedtest Tracker
- Deunhealth
- Nginx Proxy Manager
- Glance
- Gotify
- Arcane

### Fitness
- SparkyFitness

---

## 🗂️ Repository structure

```text
HomeLab/
├── docs/                 # architecture and stack notes
├── scripts/              # helper utilities
├── stacks/               # exported Docker Compose snapshots
├── templates/            # environment templates
├── README.md
└── .gitignore
```

---

## 🚀 Getting started

```bash
git clone https://github.com/gopiguniganti/HomeLab.git
cd HomeLab
cp templates/env.example .env
chmod +x scripts/stack-status.sh
./scripts/stack-status.sh
```

To inspect or replay a stack:

```bash
cd stacks/media
docker compose up -d
```

---

## 🔒 Security notes

- Keep secrets out of the repository.
- Use local environment files or secret stores for credentials.
- The compose snapshots are meant for reference and recovery, not as a replacement for proper secret management.

---

## 📝 License

MIT — feel free to use and adapt for your own HomeLab.
