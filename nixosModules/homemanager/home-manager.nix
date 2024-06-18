{ inputs, ... }:
{
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "hotrod" = import ../../hosts/hotrod/home.nix;
    };
  };

}
