resource "proxmox_vm_qemu" "server" {
  count = 3
  name = "server-${count.index}"
  vmid = 2081
  target_node = "baspve"
  clone = "template:ubuntu-20.04-cloudinit"
  full_clone = true
  cores = 2
  sockets = 1
  memory = 2048
  # net {
  #   model = "virtio"
  # }
  # disk {
  #   storage = "local-lvm"
  #   size = "10G"
  # }
  # sshkeys = file("~/.ssh/id_rsa.pub")
  # provisioner "remote-exec" {
  #   inline = [
  #     "sudo apt-get update",
  #     "sudo apt-get install -y nginx",
  #     "sudo systemctl start nginx"
  #   ]
  # }
  
}