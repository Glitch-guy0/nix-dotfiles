{ config, lib, ...}:
{
  options = {
    touchpad.enable = lib.mkEnableOption {
      default = false;
      description = "enable touchpad for laptops";
    };
  };

  config = lib.mkIf config.touchpad.enable {
    # Enable touchpad support (enabled default in most desktopManager).
    services.libinput.enable = true;
  };
}
