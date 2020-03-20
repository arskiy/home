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

    # games
    steam
    wine
    winetricks
    xpad

    # gui misc
    kolourpaint
    discord
    gimp
    sxiv

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

    # development
    cmake
    radare2
    rustup
    emacs

    clang
    clang-tools

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
