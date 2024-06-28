{ pkgs, inputs, ... }:
let
  starshipToml = builtins.readFile ../../nixosModules/custom/starship.toml;


  lazydockerConfig = ''
    customCommands:
      images:
        - name: zsh
          attach: true
          command: "docker run -it --name arch-x --net host --privileged -e DISPLAY=:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v arch_vol:/data -v home_config:/home/hotrod/.config -v project_data:/home/hotrod/projects {{ .Image.Name }} zsh"
  '';

in
{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./../../homemanagerModules/default.nix
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

    file.".config/lazydocker/config.yml".text = lazydockerConfig;

    packages = with pkgs; [
      libappindicator-gtk3
      libdbusmenu-gtk3
      bash-language-server
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
