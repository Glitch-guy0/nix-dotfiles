{...}:
{
  # allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nix = {
    settings = {
      auto-optimise-store = true;
      # enable flakes
      experimental-features = ["flakes" "nix-command"];
    };
    gc = {
      # delete nixos generations older than 7 days
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };
}
