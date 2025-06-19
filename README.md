# My Homelab

A repository to store and share the infrastructure, materials and codes, from my small self-hosting homelab. This repository contains everything I use to setup and run the devices in my homelab. For more details, see the README of the following directories.

<div> 
  <a href="https://www.linkedin.com/in/kawansilva29" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=fflat&logo=linkedin&logoColor=white" target="_blank"></a>
  <a href="http://kwnsilva.me/" target="_blank"><img src="https://img.shields.io/badge/-Website%2fBlog-blue?style=flat&logo=website&logoColor=white&link="_blank"></a> 
  <a href="https://www.instagram.com/imkawann/" target="_blank"><img src="https://img.shields.io/badge/Instagram-E4405F?style=flat&logo=instagram&logoColor=white" target="_blank"></a>
</div>

## ⚙️ Hardware

The below lists the hardware and some specs of my homelab & network infrastructure

| Device                     | CPU        | RAM   | Storage              | Operating System                | Purpose    |
| ---------------------------|:----------:|:-----:|:--------------------:|:-------------------------------:|:----------:|
| Mini PC Lenovo M910q             | I5         | 8GB   | 240GB SSD            |Proxmox Virtual Environment 8.4  | Hypervisor |

## ✨ Features

Project status: **Alpha**
- [x] Kubernetes cluster setup via kubespray
- [ ] Distributed storage
- [x] Local DNS with Pihole
- [x] Observability & Monitoring platform with Zabbix
- [ ] Streaming with Jellyfin
- [x] Speedtest
- [ ] Tailscale VPN
- [x] Home Assistant

## :wrench:&nbsp; Tech stack

My homelab uses the following software.

<table>
  <tr>
    <th>Logo</th>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><img width="32" src="https://github.com/homarr-labs/dashboard-icons/blob/main/svg/proxmox.svg"></td>
    <td><a href="https://www.proxmox.com/en/">Proxmox</a></td>
    <td>Virtual Environment</td>
  </tr>
  <tr>
    <td><img width="32" src="https://www.vectorlogo.zone/logos/debian/debian-icon.svg"></td>
    <td><a href="https://www.debian.org">Debian</a></td>
    <td>Base OS for all servers</td>
  </tr>
  <tr>
    <td><img width="32" src="https://www.vectorlogo.zone/logos/docker/docker-tile.svg"></td>
    <td><a href="https://www.docker.com">Docker</a></td>
    <td>Container runtime</td>
  </tr>
   <tr>
    <td><img width="48" src="https://github.com/ksilva-kwn/homelab/blob/main/assets/kubespray.png"></td>
    <td><a href="https://github.com/kubernetes-sigs/kubespray">Kubespray</a></td>
    <td>Playbook Kubespray</td>
  </tr>
     <tr>
    <td><img width="32" src="https://www.vectorlogo.zone/logos/terraformio/terraformio-icon.svg"></td>
    <td><a href="https://developer.hashicorp.com/terraform">Terraform</a></td>
    <td>IaC</td>
  </tr>
</table>

<p align='center'>
  Do you like my open source projects? <a href='https://stars.github.com/nominate/'>Nominate me to Github Stars ⭐</a>
</p>

## :memo: License

This project is under [MIT License](./LICENSE).
