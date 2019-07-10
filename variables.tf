

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


variable "instance_class" {
    default = "db.t2.micro"
}


variable "dv_name" {
    default = "generic-db"
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

