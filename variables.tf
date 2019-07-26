

variable "size" {
    default = 20
}

variable "storage_type" {
    default = "gp2"
}

variable "engine" {
    default = "postgres"
}


variable "engine_version" {
    default = "11.2"
}


variable "instance_type" {
    default = "db.t2.micro"
}


variable "db_name" {
    default = "genericdb"
}


variable "security_group_ids" {
  description = "Security groups to associate"
  type        = list(string)
}

variable "subnet_ids" {
  description = "VPC subnets"
  type        = list(string)
}

// 
// Tags 
//

variable "name" {
    default = "generic-ec2"
}

variable "project" {
    default = "aws-cert"
}


variable "owner" {
    default = "icullinane"
}


variable "environment" {
    default = "dev"
}

