{ config, pkgs, ... }:
{
  home.username = "unknown";
  home.homeDirectory = "/home/unknown";
  home.packages = with pkgs;[
    neofetch
    btop
  ];
}