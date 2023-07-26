resource "oci_identity_compartment" "domain-compartment" {
    # Required
    compartment_id = var.terraform_compartment
    description = "Compartment to Demonstrate Issue with db_domain"
    name = "domain"
}