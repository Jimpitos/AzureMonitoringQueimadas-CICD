variable "rm" {
  description = "RM do aluno"
  type        = string
  default     = "555295"
}

variable "location" {
  description = "Regiao dos recursos Azure"
  type        = string
  default     = "southafricanorth"
}

variable "resource_group_name" {
  description = "Nome do Resource Group"
  type        = string
  default     = "rg-monitor-queimadas-555295"
}

variable "mysql_admin_user" {
  description = "Usuario admin do MySQL"
  type        = string
  default     = "adminuser"
}

variable "mysql_admin_password" {
  description = "Senha admin do MySQL"
  type        = string
  sensitive   = true
}

variable "sql_db_name" {
  description = "Nome do banco de dados"
  type        = string
  default     = "db_queimadas"
}

variable "function_app_name" {
  description = "Nome da Azure Function"
  type        = string
  default     = "func-queimadas-rm555295"
}

variable "storage_account_name" {
  description = "Nome da Storage Account da Function"
  type        = string
  default     = "stqueimadasfunc555295"
}
