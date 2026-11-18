# Wire Harness & Cable Assembly Reliability Analytics Platform

Synthetic data engineering portfolio project modeled on aerospace wire-harness test station workflows (fictional organization: **Meridian Aerostructures**).

## Phase 1: Local DE Workstation
- **OS:** Ubuntu Server 26.04 LTS
- **Core Stack:** PostgreSQL 18.7, Python 3, Git, Bash/Cron

### Repository Structure
- `scripts/` — Bash automation toolkit (`health_check.sh`, `run_pipeline.sh`, `backup.sh`, `cleanup.sh`, `setup_vm.sh`)
- `src/` — Python ingestion and transformation modules
- `tests/` — Automated unit and data-quality tests
- `docs/` — Architecture diagrams, data dictionary, and runbooks
- `data/`, `logs/`, `backups/` — Local runtime directories (git-ignored except `.gitkeep`)

### Automation Toolkit (`scripts/`)
- **`health_check.sh`** — Verifies PostgreSQL availability via `pg_isready`.
- **`run_pipeline.sh`** — Runs pre-flight checks and pipeline steps, logging stdout/stderr to `logs/`.
- **`backup.sh`** — Archives `data/` into timestamped `.tar.gz` snapshots in `backups/`.
- **`cleanup.sh`** — Deletes log files and backup archives older than 7 days.
- **`setup_vm.sh`** — Reproducible bootstrap script for setting up a fresh Ubuntu Server VM.

### Quick Start
```bash
# Run individual operational checks
./scripts/health_check.sh
./scripts/run_pipeline.sh
./scripts/backup.sh
./scripts/cleanup.sh
```
