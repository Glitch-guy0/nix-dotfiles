

{ config, ... }:
{

  imports = [

    # main boot
    ./core/boot.nix
    ./core/audio.nix
    ./core/bluetooth.nix
    ./core/locale.nix
    ./core/nixConfig.nix 
    ./core/printerService.nix
    ./core/touchpad.nix
    # default desktop Environment
    ./core/kde.nix
    ./packages.nix
    # autologin services
    ./autologin.nix
  ];

  # enable options
  # desktop environment option
  config.desktopEnvironment.kde.enable = true;
  # config.printerService.enable = true;
  # config.touchpad.enable = true;
}
