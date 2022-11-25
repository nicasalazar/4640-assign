output "server_ip" {
  value = digitalocean_droplet.web.*.ipv4_address
}

output "bastion_public_ip" {
    value = digitalocean_droplet.bastion.ipv4_address
}
