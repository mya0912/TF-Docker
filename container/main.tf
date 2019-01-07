#Start the container

resource "docker_container" "container_1"{
	name = "${var.container_name}"
	image = "${var.image}"
	
	ports {
		internal = "${var.internal_port}"
		external = "${var.external_port}"
}}
