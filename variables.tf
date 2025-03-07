variable "identifier" {
  type        = string
  description = "Name of the token"
}

variable "user" {
  type        = number
  description = "User to apply to this token"
}

variable "description" {
  type        = string
  default     = null
  description = "Description of the token"
}

variable "expires" {
  type        = string
  default     = null
  description = "The date and time the token will expire"
}

variable "expiring" {
  type        = bool
  default     = true
  description = "Whether or not the token will expire"
}

variable "intent" {
  type        = string
  default     = "api"
  description = "The intent the token is used for"

  validation {
    condition     = contains(["verification", "api", "recovery", "app_password"], var.intent)
    error_message = "Valid values are verification, api, recovery, app_password"
  }
}

variable "retrieve_key" {
  type        = bool
  default     = false
  description = "Whether or not the key will be received"
}
