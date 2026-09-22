variable "region" {
  type = string
}

variable "project_name" {
  type = string

}

variable "vpc_cidr" {
  type = string
}

variable "db_password" {
  description = "Master password for RDS"
  type        = string
  sensitive   = true
}
