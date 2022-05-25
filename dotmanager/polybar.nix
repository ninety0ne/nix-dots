{ config, pkgs, ... }:

{
  home.file = {
    "polybar" = {
      source = ../config/polybar;
      target = "./.config/polybar";
    };
  };
}
