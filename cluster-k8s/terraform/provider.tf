terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.2-rc01"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
    }
  }
  backend "s3" {
    bucket = "proxmox-state"
    key = "terraform.state"
    region = "placeholder"

    endpoints = {
      s3 = "http://172.16.0.96:9000"
    }
    
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    use_path_style              = true
  }
}

provider "proxmox" {
  pm_api_url           = "https://172.16.0.60:8006/api2/json"
  pm_api_token_id      = "terraform-prov@pve!kawanslv29"
  pm_api_token_secret  = "ab111cd9-7ebe-41b4-8816-f71ec03db2c0"
  pm_tls_insecure      = true
}