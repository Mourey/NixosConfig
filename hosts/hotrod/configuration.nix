{ inputs, pkgs, ... }:
let
in
{
  imports =
    [
      ./hardware-configuration.nix
      ./../../nixosModules/default.nix
      inputs.home-manager.nixosModules.default
    ];


  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
    };
  };

  system = {
    stateVersion = "24.05";
  };

  nixpkgs = {
    overlays = [
      inputs.neorg-overlay.overlays.default
      (import inputs.nixpkgs-mozilla)
    ];

    config = {
      allowUnfree = true;
    };
  };



}
