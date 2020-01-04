xrdb ${HOME}/etc/xorg.d/colors/moonbow
export PATH="$PATH:${HOME}/bin:${HOME}/bin/dmenu:/usr/lib/emsdk/emscripten/1.38.31/:${HOME}/usr/local/bin/:${HOME}/etc/emacs.d/bin/"

export EDITOR=nvim
export VISUAL=nvim

export XAUTHORITY=${HOME}/etc/Xauthority

export INPUTRC="${HOME}/etc/inputrc"

export XDG_CACHE_HOME="${HOME}/usr/local/cache"
export XDG_CONFIG_HOME="${HOME}/etc/config.d"
export XDG_DESKTOP_DIR='/non/existent'
export XDG_DOWNLOAD_DIR="${HOME}/tmp"
export XDG_DATA_HOME="${HOME}/usr/local/share"

export RUSTUP_HOME="${HOME}/opt/rustup"
export CARGO_HOME="${HOME}/opt/cargo"

export PYTHONUSERBASE="${HOME}/usr/local"
export PYTHONPATH="${HOME}/usr/local"

export LESSHISTFILE="${XDG_CACHE_HOME}/lesshst"
export HISTFILE="${XDG_CACHE_HOME}/bash_history"


source ~/etc/bash.d/bashrc
