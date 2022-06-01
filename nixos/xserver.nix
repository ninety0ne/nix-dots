{ pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver = {
	enable = true;

	displayManager.sddm = {
		enable = true;
	};

	windowManager.i3 = {
		enable = true;
		package = pkgs.i3-gaps;
	};
  };

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable bluetooth
  hardware.bluetooth.enable = true;

  # Enable brightness control
  programs.light.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
   services.xserver.libinput.enable = true;
}
