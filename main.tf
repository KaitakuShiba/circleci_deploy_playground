module "create_vpc" {
  source = "./vpc"
}

module "push_ecr" {
  source = "./ecr"
}

module "security_group" {
  source = "./security_group"
}
