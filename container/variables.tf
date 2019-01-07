variable "container_name"{
        description = "name of container"
        default = "self_hosted_blog"
}
variable "internal_port"{
        description = "internal portal number"
        default = "2368"
}
variable "external_port"{
        description = "external port number"
        default = "80"
}
variable "image" {
        description = "image name for container"
}
