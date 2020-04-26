# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.timeout = 1;

  # boot.loader.grub.efiSupport = true;
  # boot.loader.grub.efiInstallAsRemovable = true;
  # boot.loader.efi.efiSysMountPoint = "/boot/efi";
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only

  networking = {
    hostName = "t430s"; # Define your hostname.
    wireless.enable = true;  # Enables wireless support via wpa_supplicant.
    wireless.networks = {
      PitucaPlus = {
        pskRaw = "c2d1b3a3c686ad153802bf85fccf8400df4283f0c1b36629fdb47283321ff5bb";
      };
    };
    firewall.allowedUDPPorts = [9993];
  };
  
  boot.cleanTmpDir = true;
  
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  # Select internationalisation properties.
  i18n = {
    defaultLocale = "en_US.UTF-8";
  };

  console = {
    font = "Lat2-Terminus16";
    #keyMap = "us";
    useXkbConfig = true;
  };

  # Set your time zone.
  time.timeZone = "America/Sao_Paulo";


  services.mingetty.autologinUser = "arskiy";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = let 
  in with pkgs; [
    wget file killall htop gotop
    gnumake rustup gcc pkg-config automake
    zip unzip
    git gitAndTools.hub
    lsd
    bspwm sxhkd
    neovim emacsUnstable

    ripgrep
    sqlite
    wordnet
  ];

  security.sudo.wheelNeedsPassword = false;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  programs.gnupg.agent = { enable = true; enableSSHSupport = true; };

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    autorun = true;
    windowManager.bspwm.enable = true;
    displayManager.defaultSession = "none+bspwm";
    displayManager.startx.enable = true;
    layout = "us";
    xkbVariant = "intl";
    xkbOptions = "ctrl:nocaps";

    # Enable touchpad support.
    libinput.enable = true;
  };

  hardware.opengl.driSupport32Bit = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.arskiy = {
    isNormalUser = true;
    extraGroups = [ "wheel" "video" ]; # Enable ‘sudo’ for the user.
  };

  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = https://github.com/nix-community/emacs-overlay/archive/master.tar.gz;
    }))
  ];

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "nixos-unstable"; # Did you read the comment?
}
