// Specify the location of the main.tf file in the users folder.

module "user_module" {
  source      = "..//..//terraform-modules/users"
  environment = "dev" // This will override what is specified in the users main.tf file.
}