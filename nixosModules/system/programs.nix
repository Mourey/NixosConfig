{ inputs, pkgs, ... }: {
  # Enable Hyprland
  programs = {
    hyprland = {
      enable = true;
      xwayland.enable = true;
      package = inputs.hyprland.packages."${pkgs.system}".hyprland;
    };


    thunar.enable = true;
    xfconf.enable = true;
    direnv.enable = true;
    dconf.enable = true;
    fish.enable = true;
    zsh = {
      enable = true;
    };

    droidcam = {
      enable = true;
    };

    virt-manager = {
      enable = true;
    };

    command-not-found = {
      enable = false;
    };
  };
}
