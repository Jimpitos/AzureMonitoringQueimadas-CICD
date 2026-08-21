variable "location" {
  description = "Regiao dos recursos Azure"
  type        = string
  default     = "canadacentral"
}

variable "resource_group_name" {
  default = "rg-monitor-queimadas-555295"
}

variable "mysql_admin_user" {
  default = "adminuser"
}

variable "mysql_admin_password" {
  type      = string
  sensitive = true
}

variable "sql_db_name" {
  default = "db_queimadas"
}

variable "function_app_name" {
  default = "func-queimadas-rm555295"
}

variable "storage_account_name" {
  default = "stqueimadasfunc555295"
}
