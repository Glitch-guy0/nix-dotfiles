{ config, pkgs,...}:
{
   users.users."unknown" = {
     initialPassword = "user";
     isNormalUser = true;
     extraGroups = [
      "networkmanager" # networking stuff
      "wheel" # superuser 
    ];
     # enter list of packages
     packages = with pkgs; 
      [
        brave
        bun
      ];
  };
}
