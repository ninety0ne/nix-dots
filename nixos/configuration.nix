{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./bootloader.nix
      ./network.nix
      ./xserver.nix
      ./packages.nix
      ./shell.nix
    ];

  nixpkgs.config.allowUnfree = true;

  time.timeZone = "Europe/Amsterdam";

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  users.users.ben = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "video" ];
    shell = pkgs.zsh;
    initialPassword = "ben123";
  };

  services.tlp = {
    enable = true;
  };

  system.stateVersion = "21.11"; # Did you read the comment?
}

