{ pkgs, inputs, ... }:
let
  starshipToml = builtins.readFile ../../nixosModules/custom/starship.toml;
in
{
  imports = [
    #inputs.nixvim.homeManagerModules.nixvim
    #../../homemanager/default.nix
    inputs.ags.homeManagerModules.default
    inputs.hyprland.homeManagerModules.default
  ];

  home = {
    username = "hotrod";
    homeDirectory = "/home/hotrod";
    stateVersion = "24.05";

    file.".config/starship.toml" = {
      text = starshipToml;
    };

    packages = with pkgs; [
      libappindicator-gtk3
      libdbusmenu-gtk3
      bash-language-server
      rustc
      cargo
      rust-analyzer
    ];

    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  nixpkgs = {
    overlays = [ inputs.neorg-overlay.overlays.default ];
    config = {
      allowUnfree = true;
    };
  };
}
