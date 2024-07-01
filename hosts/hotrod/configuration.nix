{ inputs, ... }:
let


in
{
  imports =
    [
      ./hardware-configuration.nix
      ./../../nixosModules/default.nix
      inputs.home-manager.nixosModules.default
    ];

  # nix
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
      inputs.rust-overlay.overlays.default
      (import ./overlay.nix { inherit inputs; })

    ];

    config = {
      allowUnfree = true;
    };
  };

}
