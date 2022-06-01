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
    dunst

    # Icon themes
    papirus-icon-theme

	  # Essentials 
	  firefox
    discord

	  # Commandline stuffs
	  kitty
	  neofetch
	  gotop
	  ranger
	  pulsemixer
  ];
}
