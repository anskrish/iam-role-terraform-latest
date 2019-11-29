variable "region" {
  description = "The target region"
  default = ""
}
variable "environment" {
  description = "The environment, prod, nonprod, integration etc"
  default = ""
}
variable "role-name" {
  description = "The environment, prod, nonprod, integration etc"
  default = ""
}
variable "trusted_role_arns" {
  description = "truested role"
  default = []
}
variable "create_role" {
  description = "create role"
  default = ""
}
variable "role_requires_mfa" {
  description = "mfa enable status"
  default = ""
}
variable "tags" {
  description = "A map of tags to add to all resources"
  type = "map"
  default     = {}
}
