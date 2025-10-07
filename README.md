# PostgreSQL Self-Hosted with Docker

This repository provides a simple `docker compose` setup to run a self-hosted PostgreSQL instance.

It's configured to connect to a shared Docker network, making it easy to integrate with other services like [n8n](https://github.com/AiratTop/n8n-self-hosted).

## Features

- Uses the official PostgreSQL Docker image.
- Data is persisted in a local volume.
- Pre-configured for a shared network for easy inter-service communication.
- Includes scripts for easy management (`restart-docker.sh`, `update-docker.sh`).
- Includes a `backup.sh` script for easy database backups.

## Getting Started

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/AiratTop/postgresql-self-hosted.git
    cd postgresql-self-hosted
    ```

2.  **Create the shared network:**
    If you haven't already, create the shared Docker network:
    ```bash
    docker network create shared_network
    ```

3.  **Configure environment variables:**
    Update a `.env` file and specify your database credentials.

4.  **Start the service:**
    ```bash
    docker compose up -d
    ```

## Usage

-   **Start:** `docker compose up -d`
-   **Restart:** `./restart-docker.sh`
-   **Update:** `./update-docker.sh` (Pulls the latest Docker image and restarts the container)
-   **Backup:** `./backup.sh` (Creates a compressed backup in the `backups` directory)

## Connecting with n8n

This setup is designed to work seamlessly with the [n8n-self-hosted](https://github.com/AiratTop/n8n-self-hosted) configuration. Since both services are on the `shared_network`, you can connect to PostgreSQL from n8n using the container name `psql` as the host.

## See Also

Check out other self-hosted solutions:

-   [**postgresql-self-hosted**](https://github.com/AiratTop/postgresql-self-hosted): A simple and robust PostgreSQL setup.
-   [**mysql-self-hosted**](https://github.com/AiratTop/mysql-self-hosted): A self-hosted MySQL instance.
-   [**clickhouse-self-hosted**](https://github.com/AiratTop/clickhouse-self-hosted): High-performance columnar database for analytics.
-   [**metabase-self-hosted**](https://github.com/AiratTop/metabase-self-hosted): Self-hosted Metabase on Docker for business intelligence and analytics.
-   [**qdrant-self-hosted**](https://github.com/AiratTop/qdrant-self-hosted): A vector database for AI applications.
-   [**redis-self-hosted**](https://github.com/AiratTop/redis-self-hosted): A fast in-memory data store, often used as a cache or message broker.
-   [**caddy-self-hosted**](https://github.com/AiratTop/caddy-self-hosted): A modern, easy-to-use web server with automatic HTTPS.
-   [**wordpress-self-hosted**](https://github.com/AiratTop/wordpress-self-hosted): Production-ready WordPress stack with MySQL, phpMyAdmin, and WP-CLI.
-   [**n8n-self-hosted**](https://github.com/AiratTop/n8n-self-hosted): Scalable n8n with workers, Caddy for auto-HTTPS, and backup scripts.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Author

**Airat Halitov**

- Website: [airat.top](https://airat.top)
- GitHub: [@AiratTop](https://github.com/AiratTop)
- Repository: [postgresql-self-hosted](https://github.com/AiratTop/postgresql-self-hosted)