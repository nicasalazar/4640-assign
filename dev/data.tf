data "digitalocean_ssh_key" "my_ssh_key" {
        name = "4640"
}

data "digitalocean_project" "lab_project" {
        name = "ACIT4640-Lab"
}
