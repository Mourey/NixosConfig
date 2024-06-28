{ pkgs, ... }:
{
  services = {
    openssh = {
      enable = true;
      PasswordAuthentication = false;
      KdbInteractiveAuthentication = false;
      PermitRootLogin = "no";
      AllowUsers = [ "hotrod" ];
    };

    geoclue2.enable = true;
    upower.enable = true;

    dbus.enable = true;
    dbus.packages = with pkgs; [
      xfce.xfconf
      gnome2.GConf
    ];

    mpd.enable = true;
    tumbler.enable = true;
    fwupd.enable = true;
    auto-cpufreq.enable = true;

    greetd = {
      enable = true;
      settings = {
        default_session = {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --time-format '%I:%M %p | %a • %h | %F' --cmd Hyprland";
          user = "greeter";
        };
      };
    };

    printing.enable = true;


    blueman = {
      enable = true;
    };

    displayManager = {
      sddm = {
        enable = true;
        theme = "${import ../custom/sddm-theme.nix { inherit pkgs;}}";
        wayland = {
          enable = true;
        };
      };
    };


  };

  environment.systemPackages = with pkgs; [
    at-spi2-atk
    qt6.qtwayland
    psi-notify
    poweralertd
    playerctl
    psmisc
    grim
    slurp
    imagemagick
    swappy
    ffmpeg_6-full
    wl-screenrec
    wl-clipboard
    wl-clip-persist
    cliphist
    xdg-utils
    wtype
    wlrctl
    waybar
    rofi-wayland
    dunst
    avizo
    wlogout
    gifsicle
  ];

}
