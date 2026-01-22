terraform {
  backend "gcs" {
    bucket  = "tf-state-bucketk"
    prefix  = "app-a/terraform.tfstate"
  }
}