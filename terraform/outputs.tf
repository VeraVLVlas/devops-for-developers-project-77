output "web_servers" {
  value = virtualbox_vm.web[*].network_adapter[0].ipv4_address
}

output "load_balancer" {
  value = virtualbox_vm.balancer.network_adapter[0].ipv4_address
}
