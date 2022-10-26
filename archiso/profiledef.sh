#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archlinux"
iso_label="ARCH_$(date +%Y%m)"
iso_publisher="Arch Linux <https://archlinux.org>"
iso_application="Arch Linux Live/Rescue CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/etc/polkit-1/rules.d"]="0:0:750"
  ["/etc/sudoers.d"]="0:0:750"
  ["/usr/local/bin/alci-make-a-pure-arch"]="0:0:755"
  ["/usr/local/bin/alci-displaymanager-check"]="0:0:755"
  ["/usr/local/bin/get-nemesis-on-alci"]="0:0:755"
  ["/usr/bin/gamescope-session"]="0:0:755"
  ["/usr/bin/holoiso-desktop-orientation"]="0:0:755"
  ["/usr/bin/holoiso-disable-sessions"]="0:0:755"
  ["/usr/bin/holoiso-enable-sessions"]="0:0:755"
  ["/usr/bin/holoiso-firstboot-config"]="0:0:755"
  ["/usr/bin/holoiso-gamescope-power"]="0:0:755"
  ["/usr/bin/holoiso-grub-update"]="0:0:755"
  ["/usr/bin/holoiso-reboot-tracker"]="0:0:755"
  ["/usr/bin/recoveryinit"]="0:0:755"
  ["/usr/bin/steam-http-loader"]="0:0:755"
  ["/usr/bin/steamos-select-branch"]="0:0:755"
  ["/usr/bin/steamos-session-select"]="0:0:755"
)
