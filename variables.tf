variable "name" {
  type        = string
  description = "Resource group name"
}

variable "rg_type" {
  type        = string
  description = "Specify the prefix name of the resource group"
  default     = "com"

  validation {
    condition = contains([
      "com",
      "net",
      "sec",
    ], var.rg_type)
    error_message = "The rg_type is invalid."
  }
}

variable "environment" {
  type        = string
  description = "Specify the type of environement"
  default     = "dev"

  validation {
    condition = contains([
      "dev",
      "prod",
    ], var.environment)
    error_message = "Then environment value is invalid."
  }
}

variable "location" {
  type        = string
  default     = "francecentral"
  description = "location for this ressource group. Possible location are francecentral or westeurope"

  validation {
    condition = contains([
      "francecentral",
      "westeurope",
      "northeurope",
      "unitedstates",
      "canadaeast"
    ], var.location)
    error_message = "The location value is invalid."
  }
}

variable "rg_name" {
  type        = string
  description = "Resouce group name"
}

variable "subnet_id" {
    type = string
    description = "Subnet Identifier"
  
}