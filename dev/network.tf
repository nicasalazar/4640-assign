resource "digitalocean_tag" "do_tag" {
  name = "Web"
}

resource "digitalocean_vpc" "web_vpc" {
  name     = "web"
  region   = var.region
}
