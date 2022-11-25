resource "digitalocean_vpc" "web_vpc" {
  name     = "assignment"
  region   = var.region
}
