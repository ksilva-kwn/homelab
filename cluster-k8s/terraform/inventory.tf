resource "local_file" "ansible_inventory" {
  content = templatefile("inventory.tmpl",
    {
      masters = [
        for idx in range(local.masters.count) : {
          index      = idx
          vm_name    = proxmox_vm_qemu.masters[idx].name
          user       = proxmox_vm_qemu.masters[idx].ciuser
          ip_address = proxmox_vm_qemu.masters[idx].default_ipv4_address
        }
      ]
      workers = [
        for idx in range(local.workers.count) : {
          index      = idx
          vm_name    = proxmox_vm_qemu.workers[idx].name
          user       = proxmox_vm_qemu.workers[idx].ciuser
          ip_address = proxmox_vm_qemu.workers[idx].default_ipv4_address
        }
      ]
    }
  )
  filename        = "inventory.ini"
  file_permission = "0600"
}