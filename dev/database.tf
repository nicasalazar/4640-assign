resource "digitalocean_database_cluster" "mysql-database" {
  name       = "mysql-cluster"
  engine     = "mysql"
  version    = "8"
  size       = "db-s-1vcpu-1gb"
  region     = var.region
  node_count = 1

  private_network_uuid = digitalocean_vpc.web_vpc.id
}

resource "digitalocean_database_firewall" "mysql-fw" {
  cluster_id = digitalocean_database_cluster.mysql-database.id

  rule {
    type  = "tag"
    value = digitalocean_tag.do_tag.name
  }
}


