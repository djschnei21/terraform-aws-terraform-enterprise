variable "ami_id" {
  type        = string
  description = <<DESC
  AMI ID of the custom image to use for TFE instances. If this value is provided, you do not need any of the following 
  ami variable values.
  DESC
}

variable "ami_owners" {
  type        = list(string)
  default     = ["self"]
  description = "List of AMI owners to limit search. (Not needed if providing ami_id value.)"
}

variable "ami_filter_name" {
  type        = string
  default     = null
  description = <<DESC
  The name of a key off of which to filter with a key/value pair. Example: \"tag:Distro\" (Not needed if providing
  ami_id value.)
  DESC
}

variable "ami_filter_value" {
  type        = string
  default     = null
  description = "The value off of which to filter with a key/value pair. Example: \"Ubuntu\" (Not needed if providing ami_id value.)"
}

variable "ami_most_recent" {
  type        = bool
  default     = true
  description = "If more than one result is returned, use the most recent AMI. (Not needed if providing ami_id value.)"
}

variable "acm_certificate_arn" {
  type        = string
  description = "ACM certificate ARN to use with load balancer"
}

variable "aws_role_arn" {
  type        = string
  description = "The AWS Role ARN to assume for this module."
}

variable "domain_name" {
  type        = string
  description = "Domain to create Terraform Enterprise subdomain within"
}

variable "iact_subnet_list" {
  default     = ["0.0.0.0/0"]
  type        = list(string)
  description = "A list of CIDR masks that configure the ability to retrieve the IACT from outside the host."
}

variable "license_file" {
  type        = string
  description = "The local path to the Terraform Enterprise license."
}

variable "tags" {
  type        = map(string)
  description = <<DESC
  (Optional) Map of tags only used for the autoscaling group. If you are using the AWS provider's default_tags,
  please note that it tags every taggable resource except for the autoscaling group, therefore this variable may
  be used to duplicate the key/value pairs in the default_tags if you wish.
  DESC
}

variable "tfe_subdomain" {
  type        = string
  description = "Subdomain for TFE"
}