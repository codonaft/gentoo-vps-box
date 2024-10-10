export ALPINE_VERSION='3.20'

export TARGET_DISK='/dev/sda'

export FORMAT_DISK='1' # NOTE: 1 will create dos partition table with a single ext4 partition
export MKFS_OPTS='fast_commit'

export MOUNT_OPTS='defaults,noatime,nodiratime,discard,commit=60,errors=remount-ro'

export SSH_PORT='666'
export VPS_HOSTNAME='vps'

export ROOT_SHELL='/bin/zsh'
export ENABLE_PASSWORDLESS_TTY_ROOT_LOGIN='0'

export USERNAME='vpsuser'
export USER_SHELL='/bin/zsh'
export USER_SSH_KEY='https://github.com/username.keys'
#export USER_SSH_KEY='ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOIiHcbg/7ytfLFHUNLRgEAubFz/13SwXBOM/05GNZe4 juser@example.com'

export SSH_ALLOWED_IPS=(
  #1.2.3.4
  #5.6.7.0/24
)

export WORLD_PACKAGES=(
  busybox-extras
  #certbot
  coreutils
  #crystal
  curl
  #e2fsprogs-extra
  file
  htop
  #i2pd
  #jless
  jq
  mtr
  ncdu
  #nginx
  #nginx-mod-http-brotli
  podman
  rsync
  sudo
  #tinyproxy
  tmux
  util-linux
  vim
  zsh
  zsh-vcs
)

export ADD_TO_DEFAULT_RUNLEVEL=(
  cgroups
  local
  sshd
)

# https://github.com/alpinelinux/alpine-conf/blob/master/setup-alpine.in

export ANSWERS="
KEYMAPOPTS='none'

HOSTNAMEOPTS='${VPS_HOSTNAME}'

DEVDOPTS='mdev'

DNSOPTS='9.9.9.9'

TIMEZONEOPTS='UTC'

#PROXYOPTS='http://webproxy:8080'
PROXYOPTS='none'

SSHDOPTS='openssh'

NTPOPTS='chrony'

DISKOPTS='-m sys /mnt'"
