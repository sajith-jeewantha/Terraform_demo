# Terraform_demo

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

[![GitHub](https://img.shields.io/badge/GitHub-sajith--jeewantha-blue?logo=github)](https://github.com/sajith-jeewantha)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Sajith%20Jeewantha-blue?logo=linkedin)](https://www.linkedin.com/in/sajith-jeewantha/)

## Overview

**Terraform_demo** is a cloud-native deployment project that demonstrates how to deploy a **Python Flask application** to **Google Cloud Run** using **Terraform** for infrastructure provisioning and **Docker** for containerization.

The project follows best practices for **Infrastructure as Code (IaC)** and cloud deployments.

---

## Features

- Deploy a **Python Flask API** with multiple endpoints:
  - `/api/status` – Check service status
  - `/api/info` – Project info
  - `/api/hello/<name>` – Personalized greeting
- Fully containerized with **Docker**
- Deployable on **Google Cloud Run**
- Infrastructure provisioned using **Terraform**
- Dark mode, animations, and responsive UI in the Flask frontend
- Secure handling of variables and secrets

---

## Architecture

```text
+-----------------+        +-----------------------+
| Flask App       |  -->   | Docker Container      |
| - API endpoints |        |                       |
+-----------------+        +-----------------------+
         |                         |
         v                         v
+---------------------------------------+
| Google Cloud Run (Serverless Deployment) |
+---------------------------------------+
         ^
         |
+----------------+
| Terraform IaC  |
| - Cloud Run    |
| - IAM Policies |
+----------------+
