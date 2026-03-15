variable "instance_type" {
  default = "t3.micro"
}

variable "ami_id" {
  description = "Amazon Linux 2 AMI"
  default     = "ami-02dfbd4ff395f2a1b"
}
