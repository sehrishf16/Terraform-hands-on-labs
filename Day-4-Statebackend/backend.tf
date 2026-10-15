terraform {
  backend "s3" {
    bucket         = "dev-test-prd-sehrish"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile     = true #s3 native locking supported version 1.0.0 and above
    # dynamodb_table = "terraform-state-locks" # any version of terraform supports this
  }
}