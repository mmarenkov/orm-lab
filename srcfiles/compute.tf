resource "oci_core_instance" "prod_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "EcFq:EU-FRANKFURT-1-AD-1"
	compartment_id = var.compartment_ocid
	create_vnic_details {
		assign_public_ip = "true"
		subnet_id = oci_core_subnet.web-subnet.id
	}
	display_name = "tf-demo-instance-prod"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDIBeGL5IVkP9iKejDMwJV9kTpn+ENZxas5yoozbYYAyS7G6oCbz5kVbHt+CuG3wr6ELcmBdaP2bS2QPrBUg/uvk9g6DvutPE50AGHZoWaJCQdAzOLzTBNWY/tExEjdUgG+cnUos3rFwqCW71c0wE/D8kBLzLPDI3DqojNPTse/a19046p8X9KCy4Ji0hAyD28t+alRbWp8evE9Q12AhU8lQZ0Z2px7Ykpkre/9GdhoI1sYN8O2WTkICSsxlZVVuKCkdigLGhoMFb6CzELnidHlqVVOJh4tStM60qSwRN8ErTLePQwQUkSXrPkNs9XArfTBhZmyS3k17W2Pqhhxvzyr tf-demo-key"
	}
	shape = "VM.Standard.E3.Flex"
	shape_config {
		memory_in_gbs = "16"
		ocpus = "1"
	}
	source_details {
		source_id = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaf6gm7xvn7rhll36kwlotl4chm25ykgsje7zt2b4w6gae4yqfdfwa"
		source_type = "image"
	}
}
