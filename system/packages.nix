{pkgs, ...}:
{

  #imports = [];

  # System Packages  **********************************
  environment.systemPackages = with pkgs;
  [

    git
    kitty
    vim
    vscode
    tree
    wget

  ];
}
