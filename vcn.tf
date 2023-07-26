module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.5.4"

  compartment_id = oci_identity_compartment.dataguard-compartment.id

  vcn_name = "vcndg"
  vcn_dns_label = "vcndg"
  vcn_cidrs    = ["10.0.0.0/16"]

  create_internet_gateway = "true"
  create_nat_gateway      = "true"
  create_service_gateway  = "true"
}