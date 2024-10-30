{
  description = "first nix flake";

  inputs = {
    # current stable version of nixos
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs, ... }@inputs: 
  let
    system = "x86_64-linux";
    pkgs = inherit nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
  in 
  {
    nixosConfigurations.glitch = nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = { inherit inputs; };
      modules = [
        ./system
        ./users/unknown
        ./hosts/glitch
      ];
    };
  };
}