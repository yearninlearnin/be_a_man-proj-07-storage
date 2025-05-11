terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.34.0"
    }
  }
}

provider "google" {
  project = "umaidekita-test"
  region = "us-west1"
  credentials = "umaidekita-test-20ecf64ccfa9.json"
}

