locals {
  # global configurations
  agent        = 1
  #cidr         = "172.16.0.0/24"
  onboot       = true
  proxmox_node = "kwnsilva"
  scsihw       = "virtio-scsi-pci"
  template     = "small-debian12-1c-1m"

  bridge = {
    interface = "vmbr0"
    model     = "virtio"
  }
  disks = {
    main = {
      backup  = true
      format  = "raw"
      type    = "disk"
      storage = "local-lvm"
      slot    = "scsi0"
      discard = true
    }
    cloudinit = {
      backup  = true
      format  = "raw"
      type    = "cloudinit"
      storage = "local-lvm"
      slot    = "ide2"
    }
  }
  # serial is needed to connect via WebGUI console
  serial = {
    id   = 0
    type = "socket"
  }

  # cloud init information to be injected
  cloud_init = {
    user           = "debian"
    password       = "Kawan$lv-29"
    ssh_public_key = file("./ssh/id_rsa.pub")
  }

  # master specific configuration
  masters = {
    # how many nodes?
    count = 1

    name_prefix = "srv-testemaster"
    vmid_prefix = 600

    # hardware info
    cores     = 2
    disk_size = "110G"
    memory    = 2048
    sockets   = 1

    # 192.168.0.7x and so on...
    network_last_octect = 75
    tags                = "tests"
  }

  # worker specific configuration
  workers = {
    count = 1

    name_prefix = "srv-testeworker"
    vmid_prefix = 700

    cores     = 1
    disk_size = "110G"
    memory    = 2048
    sockets   = 1

    network_last_octect = 85
    tags                = "tests"
  }
}
