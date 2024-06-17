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
