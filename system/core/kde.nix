{ config, lib, ... }:
{

  options = {
    desktopEnvironment.kde.enable = lib.mkEnableOption {
      default = false;
      description = "kde desktop Environment";
    };
  };

  config = lib.mkIf config.desktopEnvironment.kde.enable {
    services.xserver.enable = true;

    # Enable the KDE Plasma Desktop Environment.
    services.displayManager.sddm.enable = true;
    services.desktopManager.plasma6.enable = true;

    # Configure keymap in X11
    services.xserver.xkb = {
      layout = "us";
      variant = "";
    };
  };


}
