{ ... }:
{
  imports = [
    ./core/hardware
    ./core/nix
    ./core/packages.nix
    ./network
    ./autologin.nix
  ];
}