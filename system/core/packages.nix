{pkgs, inputs, ...}:
{

  #imports = [];

  # ************************* System Packages  **********************************
  environment.systemPackages = with pkgs;
  [
    git
    vim
    tree
    wget
    home-manager
  ];

  # *************************  Desktop Environment ***********************************
  # services.xserver.enable = true;  # X11

  # hyprland section
  services.displayManager.sddm.wayland.enable = true; # wayland

  # hyprland enable
  programs.hyprland.enable = true;



  # kde section
  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;
  # plasma 6 desktop env
  services.desktopManager.plasma6.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
}
