{ pkgs, inputs, ... }:
let
  starshipToml = builtins.readFile ./nix/custom/starship.toml;
in
{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ../homemanager/default.nix
    inputs.ags.homeManagerModules.default
    inputs.hyprland.homeManagerModules.default
  ];

  home = {
    username = "hotrod";
    homeDirectory = "/home/hotrod";
    stateVersion = "23.11";

    file.".config/starship.toml" = {
      text = starshipToml;
    };

    packages = with pkgs; [
      libappindicator-gtk3
      libdbusmenu-gtk3

    ];

    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  nixpkgs.overlays = [ inputs.neorg-overlay.overlays.default ];
}
