{ pkgs, ... }:

let
  startupScript = pkgs.pkgs.writeShellScriptBin "start" ''
    ${pkgs.ags}/bin/ags &
    ${pkgs.ags}/bin/swww init &
    
  '';
in
{
  wayland.windowManager.hyprland = {
    settings = {
      exec-once = ''${startupScript}/bin/start'';
    };
  };
}
