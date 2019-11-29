provider "aws" {
  region  = "${var.region}"
  version = "~> 2.20"
}

terraform {
  backend "s3" {
    bucket = "rest2dww"
    region = "us-west-2"
  }
}

###############################
# IAM assumable role for ec2
###############################
module "iam_assumable_role_admin" {
  source = "./modules/iam-role"

  trusted_role_arns = [
    "${var.trusted_role_arns}",
  ]

  create_role = "${var.create_role}"
  role_name         = "${var.role-name}"
  role_requires_mfa = "${var.role_requires_mfa}"
  tags = {
    Role = "${var.role-name}"
    environment = "${var.tags["environment"]}"
  }
}
