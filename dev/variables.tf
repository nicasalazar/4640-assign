# terraform variables
#
# The API Token
variable "do_token" {}

# set the default region to sfo3
variable "region" {
  type = string
  default = "sfo3"
}

# set the default droplet count
variable "droplet_count" {
  type = number
  default = 3
}
