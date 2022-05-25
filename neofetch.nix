{ config, pkgs, ... }:

{
  home.file = {
    "neofetch" = {
      source = ./config/neofetch/config.conf;
      target = "./.config/neofetch/config.conf";
    };
  };
}
