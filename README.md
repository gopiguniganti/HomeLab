# HomeLab

A self-hosted infrastructure repo for the Docker services running on my HP ProDesk mini PC. It includes stack snapshots, setup notes, and a small set of helper scripts so the environment is easier to understand and reproduce.

## Hardware snapshot

| Item | Details |
| --- | --- |
| Host | HP ProDesk mini PC |
| OS | Ubuntu Server |
| Runtime | Docker Compose |
| Networking | Nginx Proxy Manager and Pi-hole |
| VPN | Gluetun |
| Primary role | Media, automation, dashboards, and monitoring |

## Currently running services

- Media and downloads: Jellyfin, Sonarr, Radarr, Lidarr, Bazarr, Prowlarr, qBittorrent, NZBGet, FlareSolverr, Recyclarr, Gluetun
- Productivity and self-hosted apps: Immich, Paperless-ngx, FreshRSS, FileBrowser, Actual Budget, BentoPDF
- AI and automation: Open WebUI, SearXNG, n8n
- Operations and visibility: Glance, Nginx Proxy Manager, Gotify, Arcane, Scrutiny, ntopng, Speedtest Tracker, Deunhealth
- Fitness: SparkyFitness

## What this repo contains

This repository is a practical home lab archive with:

- exported Docker Compose snapshots for the services I actually run
- a service catalog and architecture notes
- helper scripts for checking the local stack state
- a simple structure for keeping the setup documented and maintainable

## Core stack

### Media and automation
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

### Productivity and utilities
- Immich
- Paperless-ngx
- FreshRSS
- FileBrowser
- Actual Budget
- BentoPDF

### AI and workflows
- Open WebUI
- SearXNG
- n8n

### Monitoring and networking
- Nginx Proxy Manager
- Glance
- Gotify
- Arcane
- Scrutiny
- ntopng
- Speedtest Tracker
- Deunhealth
- Pi-hole (on a separate host, used for DNS filtering and ad blocking)

### Fitness
- SparkyFitness

## Dashboard and control plane

- Glance provides a lightweight dashboard for quick access to the most important services.
- Nginx Proxy Manager handles reverse proxying and local service exposure.
- Pi-hole, while hosted on a separate machine, is part of the overall network layer and is documented here for context.

## Hardware and platform

- Host: HP ProDesk mini PC
- OS: Ubuntu Server
- Orchestration: Docker Compose
- Reverse proxy: Nginx Proxy Manager
- VPN: Gluetun

## Repository layout

```text
HomeLab/
├── docs/                 # architecture, hardware, and service documentation
├── scripts/              # helper scripts
├── stacks/               # exported compose snapshots
├── templates/            # environment templates
├── README.md
└── .gitignore
```

## Getting started

```bash
git clone https://github.com/gopiguniganti/HomeLab.git
cd HomeLab
chmod +x scripts/stack-status.sh
./scripts/stack-status.sh
```

To inspect or replay a specific stack:

```bash
cd stacks/media
docker compose up -d
```

## Security notes

- Keep secrets out of version control.
- Use local environment files or secret stores for credentials.
- The compose snapshots are intended for reference and recovery, not as a replacement for secret management.

## Notes

This repo is meant to be a clean, useful record of the self-hosted stack I run day to day. It focuses on the services that are actually hosted here, rather than a generic or overly broad setup.
