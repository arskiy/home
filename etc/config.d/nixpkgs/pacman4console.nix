# needs to switch the /usr/local prefix to ${out} on the makefile and repackage (2 lazy 4 patches)
let
  nixpkgs = import <nixpkgs> {};
  inherit (nixpkgs) stdenv fetchurl which ncurses gnumake gcc;
  pacman4console = stdenv.mkDerivation {
    name = "pacman4console";
    buildInputs = [ ncurses gnumake gcc ];
    src = ./pacman-1.3.tar.gz;
    #builder = ./builder.sh;

    buildPhase = ''
    tar -xzf $src
    cd pacman-1.3
    make install
    '';
  };
in pacman4console
