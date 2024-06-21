{ pkgs, inputs, ... }: {
  imports = [
    ./hyprland/default.nix
    ./neomutt/default.nix
  ];

  home.packages = with pkgs; [
    bun
    dart-sass
    fd
    brightnessctl
    swww
    inputs.matugen.packages.${system}.default
    slurp
    wf-recorder
    gjs
    wl-clipboard
    wayshot
    swappy
    hyprpicker
    pavucontrol
    networkmanager
    gtk3
    haskellPackages.gi-dbusmenugtk3
    libdbusmenu-gtk3
  ];

  programs.ags = {
    enable = true;
    configDir = ./ags;
    extraPackages = with pkgs; [
      accountsservice
    ];
  };
}
