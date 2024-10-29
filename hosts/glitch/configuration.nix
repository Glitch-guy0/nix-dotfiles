# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      # users
      ../home/unknown/user.nix
    ];


  # hostname of system
  networking.hostname = "glitch";
  # laptop services
  config.touchpad.enable = true;
  # vmware guest tools
  virtualisation.vmware.guest.enable = true;
  # enable kde desktop environment
  config.desktopEnvironment.kde.enable = true;

  # enable touchpad
  config.touchpad.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?

}
