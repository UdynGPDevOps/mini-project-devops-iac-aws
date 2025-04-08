variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Amazon Linux 2 AMI (for your region)"
  default     = "ami-0c768662cc797cd75" # ap-south-1 Mumbai region
}
