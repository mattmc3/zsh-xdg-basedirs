# XDG
# https://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
# https://wiki.archlinux.org/index.php/XDG_Base_Directory
# https://wiki.archlinux.org/index.php/XDG_user_directories

# Make sure XDG dirs are set
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-$HOME/.xdg}"
USE_XDG_DIRS="${USE_XDG_DIRS:-true}"

if [[ "$OSTYPE" == darwin* ]]; then
  export XDG_DESKTOP_DIR="$HOME/Desktop"
  export XDG_DOCUMENTS_DIR="$HOME/Documents"
  export XDG_DOWNLOAD_DIR="$HOME/Downloads"
  export XDG_MUSIC_DIR="$HOME/Music"
  export XDG_PICTURES_DIR="$HOME/Pictures"
  export XDG_PUBLICSHARE_DIR="$HOME/Public"
fi

if [[ $USE_XDG_DIRS == true ]]; then
  # less
  export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
  if [[ ! -f "$LESSKEY" ]]; then
    mkdir -p $(dirname "$LESSKEY")
    [[ -f ~/.lesskey ]] && cp ~/.lesskey $LESSKEY
    [[ -f ~/.less ]] && cp ~/.less $LESSKEY
    [[ -f $LESSKEY ]] || touch $LESSKEY
  fi

  export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
  if [[ ! -f "$LESSHISTFILE" ]]; then
    mkdir -p $(dirname "$LESSHISTFILE")
    [[ -f ~/.lesshst ]] && cp ~/.lesshst $LESSHISTFILE || touch $LESSHISTFILE
  fi

  # readline
  export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
  if [[ ! -f "$INPUTRC" ]]; then
    mkdir -p $(dirname "$INPUTRC")
    [[ -f ~/.inputrc ]] && cp ~/.inputrc $INPUTRC || touch $INPUTRC
  fi
fi
