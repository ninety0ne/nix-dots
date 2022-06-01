{ config, pkgs, ... }:

{
  home.file = {
    "rofi" = {
      source = ../config/rofi/config.rasi;
      target = "./.config/rofi/config.rasi";
    };
  };
}
