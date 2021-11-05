# https://pve.proxmox.com/wiki/Install_Proxmox_VE_on_Debian_Buster
# https://pve.proxmox.com/pve-docs/chapter-sysadmin.html#sysadmin_package_repositories
# https://pve.proxmox.com/pve-docs/chapter-pve-installation.html

FROM debian:bullseye
MAINTAINER nfaction@gmail.com
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install wget -y && \
    echo "deb [arch=amd64] http://download.proxmox.com/debian/pve bullseye pve-no-subscription" > /etc/apt/sources.list.d/pve-install-repo.list && \
    wget https://enterprise.proxmox.com/debian/proxmox-release-bullseye.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg && \
    chmod +r /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg
RUN apt-get update && apt-get full-upgrade -y
RUN apt-get install proxmox-ve -y || true

# docker build -f Dockerfile -t proxmox-ve:7 .

# cat > /etc/apt/sources.list<< EOF
# deb http://ftp.debian.org/debian bullseye main contrib
# deb http://ftp.debian.org/debian bullseye-updates main contrib
# 
# # security updates
# deb http://security.debian.org/debian-security bullseye-security main contrib
# EOF
# 
# cat > /etc/apt/sources.list.d/pve-enterprise.list<< EOF
# deb https://enterprise.proxmox.com/debian/pve bullseye pve-enterprise
# EOF
# 
# # wget http://download.proxmox.com/debian/proxmox-release-bullseye.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg
# wget https://enterprise.proxmox.com/debian/proxmox-release-bullseye.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg
# chmod +r /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg
