{ config, lib, ... }:
{
    
    options = {
        system.hostname = lib.mkOption {
            default = "nixos";
            description = "hostname for the networking option";
        };

    };

}