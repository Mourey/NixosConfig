{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {


      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";


      animations = {
        enabled = true;
        animation = [
          "windows, 1, 7, default"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];

      };
    };
  };
}
