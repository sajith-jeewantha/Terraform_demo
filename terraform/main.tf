terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.11.0"
    }
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.6.2"
    }
  }
}

provider "google" {
  project = var.google_project
  region  = var.region
}

data "google_client_config" "default" {

}

provider "docker" {
  registry_auth {
    address  = "${var.region}-docker.pkg.dev"
    username = "oauth2accesstoken"
    password = data.google_client_config.default.access_token
  }
}

resource "google_artifact_registry_repository" "registry" {
  location      = var.region
  repository_id = "docker-demo-repository"
  format        = "DOCKER"
}

module "api1" {
  source         = "./modules/api"
  region         = var.region
  google_project = var.google_project
  service_name   = "dockerdemoservice"
  image_name     = "docker-demo-image"
  port           = 8080
  registry_name  = google_artifact_registry_repository.registry.name
  depends_on     = [google_artifact_registry_repository.registry]
}
