# XDG
# https://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
# https://wiki.archlinux.org/index.php/XDG_Base_Directory
# https://wiki.archlinux.org/index.php/XDG_user_directories
0=${(%):-%N}

# Make sure XDG dirs are set
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-$HOME/.xdg}"

if [[ "$OSTYPE" == darwin* ]]; then
  export XDG_DESKTOP_DIR="$HOME/Desktop"
  export XDG_DOCUMENTS_DIR="$HOME/Documents"
  export XDG_DOWNLOAD_DIR="$HOME/Downloads"
  export XDG_MUSIC_DIR="$HOME/Music"
  export XDG_PICTURES_DIR="$HOME/Pictures"
  export XDG_PUBLICSHARE_DIR="$HOME/Public"
fi

zstyle -a ':xdg-basedirs:*' 'apps' _xdg_apps || _xdg_apps=(less readline)

for _app in $_xdg_apps; do
  if [[ -f "${0:A:h}/apps/$_app.zsh" ]]; then
    source "${0:A:h}/apps/$_app.zsh"
  else
    echo "XDG app not found: $_app" >&2
  fi
done
unset _xdg_apps _app
