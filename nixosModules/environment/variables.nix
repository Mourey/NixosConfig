{ pkgs, ... }:
{
  environment = {
    variables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
      FONTCONFIG_PATH = "${pkgs.nerdfonts}/etc/fonts";
      GDK_DPI_SCALE = "1";
      GDK_SCALE = "1";
      PANGOCAIRO_BACKEND = "fontconfig";
      FONTCONFIG_FILE = "/etc/fonts/fonts.conf";
      RUST_BACKTRACE = "1";
      JDK_PATH = "${pkgs.jdk11}/";
      NODEJS_PATH = "${pkgs.nodePackages_latest.nodejs}/";
    };

    sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
    };
  };
}

