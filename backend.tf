terraform {
  backend "s3" {
    bucket = "terraform-statebucket-ybhackathon2020"
    key    = "account/state.tf"
    region = "eu-central-1"
  }
}
