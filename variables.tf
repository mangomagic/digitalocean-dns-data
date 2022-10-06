variable "domain" {
  description = "DNS domain e.g. example.com"
  type        = string
}

variable "do_token" {
  description = "Digital Ocean access token"
  type        = string
  default     = ""
  sensitive   = true
}
