variable "domain" {
  description = "Domain name the service should be located on"
}

variable "droplet_name" {
  description = "Droplet name in DigitalOcean Control Panel"
  default = ""
}

variable "droplet_region" {
  description = "Datacenter region"
  default     = "nyc1"
}

variable "droplet_size" {
  description = "Droplet size"
  default     = "512mb"
}
