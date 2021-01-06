variable region { default = "eu-frankfurt-1" }
variable compartment_ocid { default = "" }
variable compute_images {
    type = list
    default = ["minikube","dev-linux"]
}
