variable "project" {
  description = "Project Id"
  type        = string
}

variable "region" {
  description = "region of project"
  type        = string
}

variable "credentials" {
  description = "Path of service account key"
  type        = string
}

variable "instance_count" {
  description = "number of compute instances"
  type        = number
}

variable "machine_type" {
  description = "instance machine type"
  type        = string
}

variable "zone" {
  description = "zone of instance"
  type        = string
}

variable "image" {
  description = "boot disk image for instance"
  type        = string
}

variable "network" {
  description = "network of instance"
  type        = string
}