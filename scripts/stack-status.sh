#!/usr/bin/env bash
set -euo pipefail

if command -v docker >/dev/null 2>&1; then
  echo "== Docker compose projects =="
  docker compose ls 2>/dev/null || true
  echo
  echo "== Running containers =="
  docker ps --format 'table {{.Names}}\t{{.Image}}\t{{.Status}}'
else
  echo "Docker is not available on this host."
  exit 1
fi
