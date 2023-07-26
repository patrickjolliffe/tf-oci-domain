variable "terraform_compartment" {}
variable "tenancy_ocid" {}

variable "user_ocid" {}

variable "fingerprint" {}

variable "private_key_path" {}

variable "region" {}

variable "password" {}

variable "availability_domain1" {}
variable "availability_domain2" {}
variable "availability_domain3" {}

variable "db_admin_password" {}

variable "db_public_keys" { type = list(string) }
