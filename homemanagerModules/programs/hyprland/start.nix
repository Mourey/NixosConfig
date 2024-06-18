{ pkgs, ... }:

let
  startupScript = pkgs.writeShellScriptBin "start" ''
    ${pkgs.ags}/bin/ags &
    ${pkgs.ags}/bin/swww init &
  '';
in
{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      exec-once = "${startupScript}/bin/start";
    };
  };
}
