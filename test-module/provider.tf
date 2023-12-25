provider "google" {
  project = var.project_id
  region = var.default_project_region
  zone = var.default_project_zone
}