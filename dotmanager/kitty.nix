{ config, pkgs, ... }:

{
  home.file = {
    "kitty" = {
      source = ../config/kitty/kitty.conf;
      target = "./.config/kitty/kitty.conf";
    };
  };
}
