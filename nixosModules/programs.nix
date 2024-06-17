{ inputs, pkgs, ... }: {
  # Enable Hyprland
  programs = {
    hyprland = {
      enable = true;
      xwayland.enable = true;
      package = inputs.hyprland.packages."${pkgs.system}".hyprland;
    };

    zsh = {
      enable = true;
    };

    command-not-found = {
      enable = false;
    };
  };
}
