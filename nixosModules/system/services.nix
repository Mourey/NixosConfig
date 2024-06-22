{ pkgs, ... }:
{
  services = {
    openssh = {
      enable = true;
    };

    displayManager = {
      sddm = {
        enable = true;
        theme = "${import ../../custom/sddm-theme.nix { inherit pkgs;}}";
        wayland = {
          enable = true;
        };
      };
    };


  };

}
