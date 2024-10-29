{pkgs, ...}:
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
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
}
