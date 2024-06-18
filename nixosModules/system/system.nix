{ pkgs, ... }: {
  documentation.nixos.enable = false;
  nixpkgs.config.allowUnfree = true;

  system = {
    stateVersion = "24.05";
  };
}
