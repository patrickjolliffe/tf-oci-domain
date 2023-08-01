resource "oci_database_db_system" "ora19" {
#  availability_domain = var.availability_domain
  availability_domain = "yKBa:EU-FRANKFURT-1-AD-1"

  compartment_id      = oci_identity_compartment.domain-compartment.id
  db_home {
    database {
      #admin_password = var.db_admin_password
      admin_password = "MyStrongPassword123--"
      db_name        = "ora19"
      db_workload    = "OLTP"
      pdb_name       = "pdb1"            
      db_domain         = "public.vcndomain"
    }
    db_version = "19.19.0.0"
  }
  defined_tags = {
    "Schedule.AnyDay" = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0"
  }
  hostname                        = "ora19"
  domain                          = "public.vcndomain.oraclevcn.com"
  shape                           = "VM.Standard.E4.Flex"
  ssh_public_keys                 = var.db_public_keys

  subnet_id = oci_core_subnet.vcn-public-subnet.id
  
  #display_name                    = "ora19"
  data_storage_size_in_gb         = 256
  database_edition                = "STANDARD_EDITION"

  db_system_options {
      storage_management = "LVM"
  }
  license_model                   = "BRING_YOUR_OWN_LICENSE"
  node_count                      = 1
  storage_volume_performance_mode = "BALANCED"
  cpu_core_count                  = 1

}