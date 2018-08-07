# This configures Terraform to use S3 as a backend for
# terraform's state. This is not necessary if you are
# a sole developer, but it's generally best practice to
# store state remotely.
terraform {
  backend "s3" {
    bucket  = "<terraform-state-bucket>"
    key     = "<terraform-state-prefix>/terraform.tfstate"
    region  = "<aws-region>"
    profile = "<aws-profile-name>"
  }
}

# This configures terraform's connection to AWS.
# In this case we keep it simple and use a profile that
# was created using the `aws configure --profile` command.
#
# You can of course change this to use API keys or whatever
# is appropriate for your AWS account.
provider "aws" {
  profile = "<aws-profile-name>"
  region = "<aws-region>"
}

# This includes the terrablog module. The values of the variables
# should be changed to match your site.
module "terrablog" {
  source = "terraform-aws-terrablog"
  site_bucket_name = "<name of s3 bucket for site content>"
  domain_name = "<domain name for site>"
}
