{ pkgs, config, ... }:
{
  services = {
    openssh = {
      enable = true;
    };

    displayManager = {
      sddm = {
        enable = true;
        wayland = {
          enable = true;
        };
      };
    };


  };

}
