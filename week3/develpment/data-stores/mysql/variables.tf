# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "db_username" {
  description = "The username for the database"
  type        = string
  sensitive   = true
  default = null
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
  default = null
}


# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "db_name" {
  description = "The name to use for the database"
  type        = string
  default     = "tstudydb"
}

variable "mysqlPort"{
  type = number
  default = 3389
}

variable "vpcCidr"{
  type = string
  default = "10.10.0.0/16"
}

variable "region"{
  type = string
  default = "ap-northeast-2"
}

variable "mysubnet3Cidr"{
  type = string
  default = "10.10.3.0/24"
}

variable "mysubnet4Cidr"{
  type = string
  default = "10.10.4.0/24"
}