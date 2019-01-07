#Output the name of the container and it's ip address
output "ip"{
	value = "${docker_container.container_1.ip_address}"
}

output "container.name"{
	value = "${docker_container.container_1.name}"
}
