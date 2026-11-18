#!/usr/bin/env bash
set -euo pipefail

echo "=== Bootstrapping Ubuntu DE Workstation ==="
sudo apt update
sudo apt install -y git curl ca-certificates gnupg cron postgresql-common openssh-server python3 python3-venv

echo "=== Adding Official PostgreSQL Repository & Installing PostgreSQL 18 ==="
sudo /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh -y
sudo apt update
sudo apt install -y postgresql-18

echo "=== Enabling Core Services ==="
sudo systemctl enable --now postgresql ssh cron

echo "=== Setup Complete ==="
psql --version
git --version
python3 --version
