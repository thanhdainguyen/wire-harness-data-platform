#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE}")/.." && pwd)"
LOG_FILE="$PROJECT_DIR/logs/pipeline_$(date +%Y%m%d).log"

{
    echo "=== Pipeline run started at $(date -Iseconds) ==="
    "$PROJECT_DIR/scripts/health_check.sh"
    python3 -c "print('Meridian Aerostructures synthetic pipeline check passed.')"
    echo "=== Pipeline run finished at $(date -Iseconds) ==="
} >> "$LOG_FILE" 2>&1
