{ config, pkgs,...}:
{
   users.users."unknown" = {
     initialPassword = "user";
     isNormalUser = true;
     extraGroups = [
      "networkmanager" # networking stuff
      "wheel" # superuser 
    ];
     # packages are added through home-manager
     #packages = with pkgs; [ ];
  };
}
