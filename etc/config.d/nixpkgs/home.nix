{ config, pkgs, ... }:
{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.packages = [
    # xorg
    pkgs.xorg.xbacklight
    pkgs.xorg.xwininfo

    # games
    #pkgs.steam
    pkgs.wine
    pkgs.winetricks
    pkgs.xpad

    # gui misc
    pkgs.kolourpaint
    #pkgs.firefox

    # cli misc
    pkgs.htop
    pkgs.fortune
    pkgs.ffmpeg
    pkgs.ffcast
    pkgs.gifsicle

    # development
    pkgs.git
    pkgs.cmake
    pkgs.radare2
    pkgs.rustup

    pkgs.clang
    pkgs.clang-tools

    # documents
    pkgs.libreoffice
    pkgs.texlive.combined.scheme-medium

    # eye candy
    pkgs.rofi

    # networking
    pkgs.qbittorrent

  ];
}
