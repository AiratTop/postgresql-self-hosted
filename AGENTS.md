# AGENTS.md

## Purpose
Public self-hosted deployment template for standalone PostgreSQL database.

## Repository Role
- Category: `*-self-hosted` (public GitHub repository).
- Related local stack: `../psql-docker`.
- Main entrypoint: `docker-compose.yml`.

## Stack Summary
- Service: `psql` (`postgres:17`).
- Exposed port: `5433` mapped to container `5432`.
- External network: `shared_network`.

## Data and Config
- Persistent data: `./data/psql`.
- Runtime options tune log verbosity in compose `command` section.

## Operations
- Restart stack: `./restart-docker.sh`.
- Update images and restart: `./update-docker.sh`.
- Backup helper: `./backup.sh`.

## AI Working Notes
- Keep DB credentials in `.env` (`PSQL_DB`, `PSQL_USER`, `PSQL_PWD`).
- Preserve healthcheck for startup sequencing.
- Avoid changing host port `5433` unless downstream clients are updated.
