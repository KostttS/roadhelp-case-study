#!/bin/sh
set -eu
if [ "$(id -u)" != "0" ]; then
  echo "Run as root" >&2; exit 1
fi
id roadhelp-ci >/dev/null 2>&1 || { echo "roadhelp-ci user not found" >&2; exit 1; }
home="$(getent passwd roadhelp-ci | cut -d: -f6)"
[ "$home" = "/home/roadhelp-ci" ] || { echo "Unexpected home directory" >&2; exit 1; }
install -d -m 700 -o roadhelp-ci -g roadhelp-ci "$home/.ssh"
key='ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFbbJY5opd6by6i3qGlTvP8IUdk7eG780eC9Zkv9NrqX roadhelp-ci'
touch "$home/.ssh/authorized_keys"
if ! grep -qxF "$key" "$home/.ssh/authorized_keys"; then
  printf '%s\n' "$key" >> "$home/.ssh/authorized_keys"
fi
chown roadhelp-ci:roadhelp-ci "$home/.ssh/authorized_keys"
chmod 600 "$home/.ssh/authorized_keys"
printf 'ROADHELP_SSH_KEY_INSTALLED\n'
