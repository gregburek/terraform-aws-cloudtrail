variable "region" {
  default = ""
}

variable "cloudtrail_name" {
  default     = ""
  description = "Specifies the name of the trail"
}

variable "multi_region_trail" {
  default     = false
  description = "Specifies whether the trail is created in the current region or in all regions"
}

variable "enable_logging" {
  default     = true
  description = "Enables logging for the trail"
}

variable "enable_log_file_validation" {
  default     = true
  description = "Specifies whether log file integrity validation is enabled"
}

variable "cloudwatch_log_group" {
  default     = ""
  description = "The name of the log group"
}

variable "sns_topic" {
  default     = ""
  description = "The friendly name for the SNS topic"
}

variable "bucket_name" {
  default     = ""
  description = "The name of the bucket"
}
