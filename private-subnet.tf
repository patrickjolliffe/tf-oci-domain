# Source from https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_subnet

resource "oci_core_subnet" "vcn-private-subnet"{
  compartment_id = oci_identity_compartment.domain-compartment.id
  vcn_id = module.vcn.vcn_id
  cidr_block = "10.0.1.0/24"
 
  prohibit_public_ip_on_vnic = true
  display_name = "private-subnet-tf-domain-vcn"

  security_list_ids = [oci_core_security_list.private-security-list.id]

  route_table_id = module.vcn.nat_route_id
}