{ inputs, ... }:
{
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    backupFileExtension = "backup";
    users = {
      "hotrod" = import ../../hosts/hotrod/home.nix;
    };
  };

}
