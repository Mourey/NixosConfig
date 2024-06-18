{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {

      env = [
        "HYPRCURSOR_SIZE,24"
        "XCURSOR_SIZE,24"
      ];
    };
  };
}
