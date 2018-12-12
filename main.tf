#Download the latest Ghost Image

resource "docker_image" "image_id" {
	name = "ghost:latest"
}

#Create a docker container to run the ghost image

resource "docker_container" "container_1"{
	name = "self_hosted_blog"
	image = "${docker_image.image_id.latest}"
	ports{
		internal = "2368"
		external = "80"}
}

#output container name and ip address

output "IP Address"{
	value = "docker_container.container_1.ip_address"
}

output "Container Name"{
	value = "docker_container.container_1.name"
}
	
