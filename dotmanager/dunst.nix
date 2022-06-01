{ config, pkgs, ... }:

{
  home.file = {
    "dunst" = {
      source = ../config/dunst/dunstrc;
      target = "./.config/dunst/dunstrc";
    };
  };
}
