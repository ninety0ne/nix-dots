{ pkgs, ... }:

{
  nixpkgs.config = {
	allowUnfree = true;
	nativeOnly = true;
  };

  home.packages = with pkgs; [
	# Bar
	polybar

	# Utils
	rofi
	maim
	xclip
	feh
	ueberzug
  pywal
  betterlockscreen

	# Browser
	firefox

	# Commandline stuffs
	kitty
	neofetch
	htop
	ranger
	pulsemixer
  ];
}
