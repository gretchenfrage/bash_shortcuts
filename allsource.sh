
# sourcing this file, sources all the files
# includes some platform-specific logic

source ~/shortcut/meta.aliases
source ~/shortcut/devops.aliases
source ~/shortcut/docker.aliases
source ~/shortcut/gortcut.aliases
source ~/shortcut/fs.aliases

# os-specific
# see: https://stackoverflow.com/questions/3466166/how-to-check-if-running-in-cygwin-mac-or-linux
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [[ "${machine}" = "Linux" ]]; then
  source ~/shortcut/linux_shell.aliases
fi

if [[ "${machine}" = "Mac" ]]; then
  source ~/shortcut/mac_shell.aliases
fi
