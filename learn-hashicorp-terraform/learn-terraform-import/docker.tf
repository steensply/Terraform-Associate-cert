resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# docker_container.web:
resource "docker_container" "web" {
  image = docker_image.nginx.latest
  name  = "hashicorp-learn"
  env   = []

  ports {
    external = 8081
    internal = 80
  }
}
