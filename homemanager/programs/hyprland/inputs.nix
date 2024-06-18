{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      input = {
        kb_layout = "us, latam";
        kb_variant = "";
        kb_model = "";
        kb_options = "grp:alt_space_toggle";
        kb_rules = "";
        numlock_by_default = true;


        follow_mouse = "1";

        sensitivity = "0";

        touchpad = {
          natural_scroll = true;
          clickfinger_behavior = true;
        };
      };

      gestures = {
        workspace_swipe = false;
      };

    };
  };
}
