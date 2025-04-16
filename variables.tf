variable "project_id" {
  type        = string
  description = "The ID of the Google Cloud project"
}

variable "region" {
  type        = string
  description = "The Google Cloud region"
}

variable "credentials_file" {
  type        = string
  description = "credentials path"
}

variable "vpc_network_name" {
  type        = string
  description = "The name of the VPC network"
}

variable "subnetwork_name" {
  type        = string
  description = "name of the subnetwork"
}

variable "subnetwork_ip_cidr_range" {
  type        = string
  description = "IP CIDR range for the subnetwork"
}

variable "compute_instance_name" {
  type        = string
  description = "name of the compute instance"
}

variable "compute_instance_machine_type" {
  type        = string
  description = "machine type for the compute instance"
}

variable "compute_instance_zone" {
  type        = string
  description = "zone of the compute instance"
}

variable "compute_instance_image" {
  type        = string
  description = "os image"
}