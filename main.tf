terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.42"
    }
  }
}

provider "google" {
  project = "cicdproject-465101"
  region  = "us-west1"
}

resource "google_storage_bucket" "project_bucket" {
  name                     = "tt-cicd-bucket"
  location                 = "US"
  force_destroy            = true
  public_access_prevention = "enforced"

}