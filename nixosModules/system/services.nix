{ pkgs, config, ... }:
{
  services = {
    openssh = {
      enable = true;
    };

    enable = true;
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
