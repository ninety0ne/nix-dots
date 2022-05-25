{ config, pkgs, ... }:

{
  imports = [
	./packages.nix
	./fonts.nix
	./config.nix
	./i3.nix
	./neofetch.nix
	./picom.nix
	./polybar.nix
  ];
}
