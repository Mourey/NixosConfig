{ pkgs, ... }:
{
  services = {
    openssh = {
      enable = true;
      ports = [ 22 ];
      allowSFTP = true;
      settings = {
        PermitRootLogin = "no";
        PasswordAuthentication = true;
        KbdInteractiveAuthentication = true;
      };
    };

    xserver = {
      enable = true;

      displayManager = {
        gdm.enable = true;
      };


      xkb = {
        layout = "us";
        variant = "";
      };
    };

    supergfxd = {
      enable = true;
    };

    dbus.enable = true;


    asusd = {
      enable = true;
    };

    upower = {
      enable = true;
    };

    power-profiles-daemon = {
      enable = true;
    };

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };

  };

}
