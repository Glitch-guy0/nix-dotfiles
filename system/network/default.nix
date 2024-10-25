{ config, lib, ... }:
{

  # Enable networking
  networking.networkmanager.enable = true;
  # hostname of system
  networking.hostName = config.system.hostname; # Define your hostname.

  # wireless works fine / enable this if you need wpa_supplicant
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

}
