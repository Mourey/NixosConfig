{ pkgs, inputs, ... }:
let
  starshipToml = builtins.readFile ../../nixosModules/custom/starship.toml;
  lazydockerConfig = builtins.readFile ../../nixosModules/custom/lazydocker.yml;
  crates = builtins.readFile ../../nixosModules/custom/cargo/crates.toml;
  ssh_config = builtins.readFile ../../nixosModules/custom/ssh/config;
  gitconfig = builtins.readFile ../../nixosModules/custom/gitconfig;
  gtkrc2 = builtins.readFile ../../nixosModules/custom/gtkrc-2.0;

  #icons
  iconsDir = pkgs.runCommand "icons" { } ''
    mkdir -p $out
    cp -r ${./.icons}    $out
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

    file = {

      ".config/starship.toml" = {
        text = starshipToml;
      };

      ".config/lazydocker/config.yml" = {
        text = lazydockerConfig;
      };

      ".cargo/.crates.toml" = {
        text = crates;
      };

      ".ssh/config" = {
        text = ssh_config;
      };

      ".gitconfig" = {
        text = gitconfig;
      };

      ".gtkrc-2.0" = {
        text = gtkrc2;
      };

      ".icons" = {
        source = "${iconsDir}/.icons";
        recursive = true;
      };

    };


    packages = with pkgs; [
      libappindicator-gtk3
      libdbusmenu-gtk3
      bash-language-server
      wezterm
    ];

    sessionVariables = {
      EDITOR = "nvim";
      TERM = "wezterm";
    };
  };

  nixpkgs = {
    overlays = [ inputs.neorg-overlay.overlays.default ];
    config = {
      allowUnfree = true;
    };
  };
}



