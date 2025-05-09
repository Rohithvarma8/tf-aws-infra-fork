# configure region

variable "vpc_region_aws" {
  description = "provide a region to create a aws vpc"
  type        = string
  default     = "us-east-1"
}

# configure vpc name

variable "vpc_name_aws" {
  description = "provide a name for your vpc"
  type        = string
  default     = "healthz-vpc"
}

# configure cidr range

variable "vpc_cidr_aws" {
  description = "provide ip range for vpc"
  type        = string
  default     = "172.16.0.0/16"
}

# configure number of private subnets

variable "vpc_subnet_count_aws" {
  description = "Provide the number of public and private subnets required"
  type        = number
  default     = 3
}

# configure aws profile

variable "vpc_profile_aws" {
  description = "Enter aws profile"
  type        = string
  default     = "demo"
}

#  configure subnet mask

variable "vpc_subnet_mask_aws" {
  description = "please enter a value, mask sum of this value and cidr mask should not exceed 28 and accomadate all subnets"
  type        = number
  default     = 4
}

variable "custom_ami" {
  description = "Custom AMI ID for the EC2 instance"
  type        = string

}

variable "root_volume_size" {
  description = "Size of the root volume (in GB)"
  type        = number
  default     = 25
}

variable "root_volume_type" {
  description = "Type of the root volume"
  type        = string
  default     = "gp2"
}

variable "delete_on_termination" {
  description = "Whether to delete the EBS volume when the instance is terminated"
  type        = bool
  default     = true
}

variable "app_port" {
  description = "Port on which your application runs"
  type        = number
  default     = 5000
}

variable "aws_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "db_name" {
  description = "database name for csye6225 application"
  type        = string
  default     = "postgres"
}

# variable "db_password" {
#  description = "provide a password for database"
#  type        = string
#  default     = "password123"
# }

variable "db_username" {
  description = "database Username"
  type        = string
  default     = "postgres"
}

variable "env_webapp" {
  description = "environment will be specified for webapplication"
  type        = string
  default     = "production"
}

variable "dns-domain-name" {
  description = "profile of aws you're using"
  type        = string
  default     = "demo"
}
variable "dns-sub-domain-name" {
  description = "domain name for your healthz application"
  type        = string
  default     = "rohithvarmadatla.me"
}

variable "dns-load-balancer-name" {
  description = "load balancer name"
  type        = string
}

variable "load-balancer-zone-id" {
  description = "The Zone ID of the load balancer"
  type        = string
}

variable "key_name" {
  description = "SSH key pair to access EC2"
  type        = string
  default     = ""
}

variable "ssl_certificate_arn" {
  description = "The ARN of the ACM SSL certificate to secure the load balancer"
  type        = string
}