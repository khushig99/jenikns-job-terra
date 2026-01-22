terraform {
  backend "gcs" {
    bucket  = "tf-state-bucketk"
    prefix  = "app-b/terraform.tfstate"
  }
}