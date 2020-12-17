# Outputs for the vcn module

output "vcn_id" {
  description = "OCID of the VCN that is created"
  value = oci_core_vcn.tf-demo-prod.id
}
