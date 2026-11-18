#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE}")/.." && pwd)"

find "$PROJECT_DIR/logs" -type f -name "*.log" -mtime +7 -delete
find "$PROJECT_DIR/backups" -type f -name "*.tar.gz" -mtime +7 -delete
echo "[$(date -Iseconds)] Cleanup completed."
