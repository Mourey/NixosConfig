{ inputs, ... }:
let
  username = "hotrod";
in
{
  imports =
    [
      ./hardware-configuration.nix
      ../../nix/default.nix
      inputs.home-manager.nixosModules.default
    ];

  # nix
  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
    };
  };

  system = {
    stateVersion = "23.11";
  };

  nixpkgs = {
    overlays = [
      inputs.neorg-overlay.overlays.default
    ];

    config = {
      allowUnfree = true;
    };
  };

}
