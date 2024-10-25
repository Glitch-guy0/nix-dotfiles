{ config, lib, ...}:
{
  config.system.hostname = "glitch";
  config.touchpad.enable = true;

  imports = [
		#../configuration.nix
  ];
}
