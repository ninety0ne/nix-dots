{ config, pkgs, ... }:

{
  imports = [
	./packages.nix
	./fonts.nix
	./config.nix

  #configs
	./dotmanager/i3.nix
	./dotmanager/neofetch.nix
	./dotmanager/picom.nix
	./dotmanager/polybar.nix
	./dotmanager/kitty.nix
  ];
}
