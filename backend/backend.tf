terraform {
  backend "s3" {
      bucket    = "smorgan-tfstate-abc123"
      key       = "smorgan/terraform"
      region    = "us-east-1"
      profile   = "onboarding-sandbox"
  }
}