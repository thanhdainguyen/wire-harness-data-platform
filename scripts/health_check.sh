#!/usr/bin/env bash
set -euo pipefail

if pg_isready -q; then
    echo "[$(date -Iseconds)] OK: PostgreSQL is accepting connections."
    exit 0
else
    echo "[$(date -Iseconds)] ERROR: PostgreSQL is unreachable." >&2
    exit 1
fi
