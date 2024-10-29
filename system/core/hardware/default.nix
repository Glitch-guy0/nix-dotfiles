{ ... }:
{
  imports = [
    ./audio.nix
    ./bluetooth.nix
    ./boot.nix
    ./locale.nix
    ./printerService.nix
    ./touchpad.nix
  ];

  # ************************ Config Options *****************************
  # config.printerService.enable = true;
  # config.touchpad.enable = true;
}