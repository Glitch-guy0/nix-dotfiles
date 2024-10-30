{pkgs, inputs, ...}:
{

  imports = [
    ./packages/hyprland.nix
  ];

  # ************************* System Packages  **********************************
  environment.systemPackages = with pkgs;
  [
    git
    home-manager
    mesa
    tree
    vim
    wget
    # user desktop requirements
    xdg-desktop-portal-hyprland
  ];

  # *************************  Desktop Environment ***********************************
  
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
}
