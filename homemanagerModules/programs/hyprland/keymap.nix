{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {

      "$mainMod" = "SUPER";
      bind = [
        "$mainMod, Q, exec, kitty"
        "$mainMod, C, killactive"
        "$mainMod, M, Exit"
        "$mainMod, V, togglefloating"
        "$mainMod, R, exec, $menu -show window"
        "$mainMod, P, pseudo"
        "$mainMod, J, togglesplit"
        "$mainMod, K, exec, $browser"
        "$mainMod SHIFT, S, exec, screen-shot"
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 0"

        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        #        "$mainMod SHIFT, h, hy3:makegroup, h"
        #       "$mainMod SHIFT, v, hy3:makegroup, v"


        "$mainMod SHIFT, left, movewindow, l"
        "$mainMod SHIFT, right, movewindow, r"
        "$mainMod SHIFT, up, movewindow, u"
        "$mainMod SHIFT, down, movewindow, d"

        "$mainMod, N, togglespecialworkspace, magic"
        "$mainMod SHIFT, N, movetoworkspace, special:magic"

        "mainMod CTRL, left, resizeactive, 100,^(kitty)$"

        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"

        "$mainMod, SPACE, exec, rofi -show drun -show-icons"
        "$mainMod, E, exec, dolphin"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
    };
  };
}
