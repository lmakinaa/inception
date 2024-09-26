# Inception Project

## Table of Contents
1. [Overview](#overview)
2. [Architecture](#architecture)
3. [Services (Containers)](#services)
4. [Prerequisites](#prerequisites)
5. [Installation](#installation)
6. [Usage](#usage)
7. [License](#license)

## Overview

The Inception project is part of the 42 school curriculum, focusing on Docker containerization and system administration. It involves setting up a small infrastructure composed of different services under specific rules, emphasizing the use of Docker Compose for orchestration.

## Architecture

This project implements a modern web application stack with the following architecture:

- NGINX as the front-facing web server and reverse proxy
- WordPress as the main application
- MariaDB for persistent data storage
- Redis for caching
- Volumes Backups Manager app (React/Flask) for saving wordpress files and database data
- FTP for file management
- Adminer for database administration
- Prometheus, Node Exporter, and Grafana for monitoring and analytics

All services are containerized using Docker and orchestrated with Docker Compose.

## Services (Containers)

1. **NGINX**: 
   - Acts as a reverse proxy
   - Handles SSL/TLS termination
   - Serves static content

2. **WordPress**:
   - PHP-based content management system
   - Connected to MariaDB for data persistence
   - Utilizes Redis for object caching

3. **MariaDB**:
   - Relational database for WordPress
   - Configured for data persistence and backup

4. **Redis**:
   - In-memory data structure store
   - Used for WordPress object caching

5. **Backups Manager Frontend (React)**:
   - User interface for managing backups
   - Provides intuitive controls for scheduling, viewing, and restoring backups
   - Communicates with the Backups Manager Backend API

6. **Backups Manager Backend (Flask)**:
   - Handles the logic for backup creation, scheduling, and exporting
   - Manages backup storage and retrieval
   - Provides API endpoints for the Frontend to interact with

7. **FTP**:
   - File Transfer Protocol server
   - Allows secure file management

8. **Adminer**:
   - Lightweight database management tool
   - Alternative to phpMyAdmin

9. **Prometheus**:
   - Monitoring and alerting toolkit
   - Collects metrics from services

10. **Node Exporter**:
   - Prometheus exporter for hardware and OS metrics

11. **Grafana**:
   - Analytics and interactive visualization platform
   - Creates dashboards using Prometheus data

## Prerequisites

- Docker Engine (version 20.10.0 or later)
- Docker Compose (version 1.29.0 or later)
- Git
- Make (optional, for using Makefile commands)

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/lmakinaa/inception.git
   cd inception
   ```

2. Set up environment variables:
   ```bash
   cp src/.env.example src/.env
   nano src/.env  # Edit variables as needed
   ```

3. Build and start the services:
   ```bash make up-attached ``` or you can use ```bash make up ``` for detached mode.

## Usage

After successful deployment, access the services:

- WordPress: https://yourdomain.com
- Grafana: http://yourdomain.com:3000
- Backups Manager: http://yourdomain.com:3300
- Adminer: http://yourdomain.com:8000
- FTP: ftp://yourdomain.com:21

Replace `yourdomain.com` with your actual domain or IP address.

## License

This project is developed as part of the 42 school curriculum and is subject to their academic policies and licensing agreements.
