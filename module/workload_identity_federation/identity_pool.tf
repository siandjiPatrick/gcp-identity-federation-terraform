terraform {
  #required_version = var.terraform_version
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = "terraform-patrickstyl"
  region  = "europe-west1"
  zone    = "europe-west1-b"

}
resource "google_iam_workload_identity_pool" "identity_pool" {
  workload_identity_pool_id = var.identity_pool_name
  disabled                  = false

}

