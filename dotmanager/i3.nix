{ config, pkgs, ... }:

{
  home.file = {
    "i3" = {
      source = ../config/i3/config;
      target = "./.config/i3/config";
    };
  };
}
