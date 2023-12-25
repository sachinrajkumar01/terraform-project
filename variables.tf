variable "SG-ports" {
  description = "ports for SG through the dynamic blocks"
  type        = list(number)
  default     = [1500, 22, 443, 21, 3200]

}