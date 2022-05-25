{ ... }:

{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  networking.firewall.enable = true;

  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
}
