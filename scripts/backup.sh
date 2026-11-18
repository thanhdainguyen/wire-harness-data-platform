#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE}")/.." && pwd)"
ARCHIVE="$PROJECT_DIR/backups/data_backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf "$ARCHIVE" -C "$PROJECT_DIR" data
echo "[$(date -Iseconds)] Backup created: $ARCHIVE"
