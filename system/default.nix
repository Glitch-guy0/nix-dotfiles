{ ... }:
{
  imports = [
    ./core/hardware
    ./core/nix
    ./network
    ./autologin.nix
    ./packages.nix
  ];
}