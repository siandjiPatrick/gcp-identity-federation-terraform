terraform {
  backend "gcs" {
    bucket = "tf-tfstate-bucket"
    prefix = "wif-state" # workload identity federation state file
  }
  required_providers {
    google = {
        source = "hashicorp/google"
    }
  }
}