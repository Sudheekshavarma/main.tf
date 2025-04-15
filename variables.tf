variable "project_id" {
  type        = string
  description = "The ID of the Google Cloud project"
  default     = "my-project-sudheeksha"
}

variable "region" {
  type        = string
  description = "The Google Cloud region"
  default     = "us-central1"
}

variable "credentials_file" {
  type        = string
  description = "credentials path"
  default     = "keys.json"
}

variable "vpc_network_name" {
  type        = string
  description = "The name of the VPC network"
  default     = "vpc-network"
}

variable "subnetwork_name" {
  type        = string
  description = "name of the subnetwork"
  default     = "subnetwork"
}

variable "subnetwork_ip_cidr_range" {
  type        = string
  description = "IP CIDR range for the subnetwork"
  default     = "10.2.0.0/16"
}

variable "compute_instance_name" {
  type        = string
  description = "name of the compute instance"
  default     = "vminstance"
}

variable "compute_instance_machine_type" {
  type        = string
  description = "machine type for the compute instance"
  default     = "e2-medium"
}

variable "compute_instance_zone" {
  type        = string
  description = "zone of the compute instance"
  default     = "us-central1-a"
}

variable "compute_instance_image" {
  type        = string
  description = "os image"
  default     = "debian-cloud/debian-11"
}