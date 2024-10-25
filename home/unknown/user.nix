{ config, lib, pkgs,...}:
let
  username = "unknown";
  groups = 
    [
      "networkmanager" # networking stuff
      "wheel" # superuser 
    ];
  password = "user";

in
{
   users.users.${username} = {
     initialPassword = password;
     isNormalUser = true;
     extraGroups = groups;
     # enter list of packages
     packages = with pkgs; 
      [
        brave
        bun
      ];
  };
}
