{ config, pkgs, ... }:

with pkgs;

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName = "Alice Micheloni";
    userEmail = "alicemicheloni@tutanota.com";
  };

  home.packages = [
    # xorg
    xorg.xbacklight
    xorg.xwininfo
    xorg.libX11

    # games
    steam
    wineWowPackages.stable
    winetricks
    xpad

    # gui misc
    kolourpaint
    discord
    gimp
    sxiv
    qalculate-gtk
    corefonts

    # cli misc
    htop
    fortune
    ffmpeg
    ffcast
    imagemagick
    gifsicle
    maim
    xclip
    xdotool
    jq
    p7zip
    toilet
    xrectsel
    unrar
    bat
    libqalculate
    moreutils
    youtube-dl
    vlc
    languagetool

    # development
    cmake
    radare2
    rustup
    hugo

    clang
    clang-tools
    lldb

    # documents
    libreoffice
    zathura
    texlive.combined.scheme-medium

    # eye candy
    rofi
    polybar
    dunst
    libnotify

    # networking
    qbittorrent

  ];
}
