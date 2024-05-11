variable "ami_id" {
  description = "variable for amazon linux 2 ami id"
  type        = string
  default     = "ami-07caf09b362be10b8"
}

variable "az_id" {
  description = "variable for az"
  type        = string
  default     = "ami-07caf09b362be10b8"
}

variable "itype_id" {
  description = "variable for instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_id" {
  description = "variable for key id"
  type        = string
  default     = "test-script"
}

variable "ec2_name" {
  description = "variable for vm name"
  type        = string
  default     = "tfvm1"
}

variable "iac_id" {
  description = "variable for iac"
  type        = string
  default     = "terraform"
}