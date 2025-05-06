# Inception

*This project is part of the 42 Network Common Core.*

## Objective:

The goal of this project is to set up an **infrastructure** for a web application using **Docker containers** and **Docker Compose**.

## Mandatory Services:

You must configure and run the following three services:

- **Nginx** — a web server acting as a reverse proxy.
- **WordPress** — a CMS running with PHP-FPM.
- **MariaDB** — a relational database to store WordPress data.

## Requirements

- All services must run in **separate containers**.
- Use **Docker Compose** to manage and orchestrate the services.
- Ensure services communicate over a **custom Docker network**.
- Persist data for **MariaDB** and **WordPress** using Docker volumes.
- Use environment variables for sensitive data (e.g., DB credentials).

