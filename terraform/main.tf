resource "virtualbox_vm" "web" {
  count  = 2
  name   = "web-${count.index + 1}"
  image  = var.vm_image
  cpus   = 2
  memory = "2048 mib"

  network_adapter {
    type           = "hostonly"
    host_interface = "vboxnet0"
  }
}

resource "virtualbox_vm" "balancer" {
  name   = "load-balancer"
  image  = var.vm_image
  cpus   = 2
  memory = "2048 mib"

  network_adapter {
    type           = "hostonly"
    host_interface = "vboxnet0"
  }
}
