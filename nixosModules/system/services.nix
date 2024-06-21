{ pkgs, config, ... }:
{
  services = {
    openssh = {
      enable = true;
    };

    xserver = {
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


  };

}
