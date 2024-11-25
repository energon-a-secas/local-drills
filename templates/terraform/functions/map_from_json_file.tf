data "local_file" "input" {
  filename = "example.json"
}

locals {
  services = jsondecode(file("${path.module}/files/example.json"))
}

output "map" {
  value = local.services
}
