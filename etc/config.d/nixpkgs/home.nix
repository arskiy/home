{ config, pkgs, ... }:

with pkgs;

let my-python-packages = python-packages: with python-packages; [
  pandas
  requests
  matplotlib
  nltk
]; 
python-with-my-packages = python3.withPackages my-python-packages;
in
{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

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
    #steam
    wineWowPackages.staging
    winetricks
    xpad

    # gui misc
    kolourpaint
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
    texlive.combined.scheme-full

    # eye candy
    rofi
    polybar
    dunst
    libnotify

    # networking
    qbittorrent

  ];
}
