#!/bin/bash

date

# Exit immediately if a command exits with a non-zero status.
set -e

source .env

BACKUP_DIR="backups"
mkdir -p "${BACKUP_DIR}"

# Dump the PostgreSQL database and compress it.
docker compose exec -T psql pg_dump -U "${PSQL_USER}" -d "${PSQL_DB}" | gzip > "${BACKUP_DIR}/psql_db_$(date +%F_%H-%M-%S).sql.gz"
