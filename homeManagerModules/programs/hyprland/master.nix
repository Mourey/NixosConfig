{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      master = {
        new_is_master = false;
        special_scale_factor = "0.4";
        orientation = "left";
        drop_at_cursor = true;
      };
    };
  };
}
