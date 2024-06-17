{ pkgs, ... }: {
  documentation.nixos.enable = false;
  nixpkgs.config.allowUnfree = true;

  system = {
    stateVersion = "23.11";
  };
}
