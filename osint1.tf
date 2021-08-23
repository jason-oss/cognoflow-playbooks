resource "digitalocean_droplet" "osint1" {
  image = "ubuntu-20-04-x64"
  name = "osint1"
  region = "ams3"
  size = "s-1vcpu-1gb"
  private_networking = true
  user_data = file("config/webuserdata.sh")
  ssh_keys = [
    var.ssh_fingerprint
  ]
  connection {
    user = "root"
    type = "ssh"
    private_key = file(var.pvt_key)
    timeout = "2m"
  }
}