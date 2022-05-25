{ ... }:

{
  programs.home-manager.enable = true;
  home = {
	username = "ben";
	homeDirectory = "/home/ben";
	stateVersion = "21.11";
  };
}
