resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "barclays-container-name"
  ports {
    internal = 80
    external = 8000
  }
}