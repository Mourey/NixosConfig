{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      decoration = {
        rounding = "10";
        active_opacity = "1.0";
        inactive_opacity = "0.8";

        drop_shadow = "10";
        shadow_range = "4";

        blur = {
          enabled = true;
          size = "3";
          passes = "1";
          vibrancy = "0.17";
          popups = true;
        };
      };
    };
  };
}
