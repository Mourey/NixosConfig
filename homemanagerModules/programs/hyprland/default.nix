{ ... }:
{
  imports = [
    # General Hyprlnad Configuartion
    ./start.nix
    ./animations.nix
    ./decoration.nix
    ./dwindle.nix
    ./env_var.nix
    ./general.nix
    ./inputs.nix
    ./keymap.nix
    ./master.nix
    ./monitor_layout.nix
    ./programs.nix
    # Import Hypland Plugins
    ./plugins/default.nix
  ];

  # Enable Hyprland and deine the plugins
  wayland.windowManager.hyprland = {
    enable = true;

    # Misc Settings
    settings = {
      misc = {
        force_default_wallpaper = "0";
        disable_hyprland_logo = true;
      };
      windowrulev2 = "suppressevent mazimize, class:.";
    };
  };
}
