variable "project_id" {
  type        = string
  description = "The ID of the Google Cloud project"
  default     = "my-project-sudheeksha"
}

variable "region" {
  type        = string
  description = "The Google Cloud region to deploy resources in"
  default     = "us-central1"
}

variable "credentials_file" {
  type        = string
  description = "The path to the Google Cloud service account credentials JSON file"
  default     = "keys.json"
}

variable "vpc_network_name" {
  type        = string
  description = "The name of the VPC network"
  default     = "vpc-network"
}

variable "subnetwork_name" {
  type        = string
  description = "The name of the subnetwork"
  default     = "subnetwork"
}

variable "subnetwork_ip_cidr_range" {
  type        = string
  description = "The IP CIDR range for the subnetwork"
  default     = "10.2.0.0/16"
}

variable "compute_instance_name" {
  type        = string
  description = "The name of the compute instance"
  default     = "vminstance"
}

variable "compute_instance_machine_type" {
  type        = string
  description = "The machine type for the compute instance"
  default     = "e2-medium"
}

variable "compute_instance_zone" {
  type        = string
  description = "The Google Cloud zone for the compute instance"
  default     = "us-central1-a"
}

variable "compute_instance_image" {
  type        = string
  description = "The image to use for the compute instance boot disk"
  default     = "debian-cloud/debian-11"
}