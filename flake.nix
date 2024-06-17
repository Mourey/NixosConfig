{
  description = "HotRod Configuration for NixOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    devshell = {
      url = "github:numtide/devshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    agenix-rekey = {
      url = "github:oddlama/agenix-rekey";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:danth/stylix";
    };

    nix-index-database = {
      url = "github:Mic92/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    };

    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };

    hyprland-hyprspace = {
      url = "github:KZDKM/Hyprspace";
      inputs.hyprland.follows = "hyprland";
    };

    hy3 = {
      url = "github:outfoxxed/hy3";
      inputs.hyprland.follows = "hyprland";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    sops-nix = {
      url = "github:Mic92/sops-nix";
    };

    neorg-overlay = {
      url = "github:nvim-neorg/nixpkgs-neorg-overlay";
    };

    ags = {
      url = "github:Aylur/ags";
    };

    matugen = {
      url = "github:InioX/matugen?ref=v2.2.0";
    };

    lf-icons = {
      url = "github:gokcehan/lf";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, ... }@inputs: builtins.trace "Starting outputs evaluation" {
    packages.x86_64-linux.default = builtins.trace "Setting default package" (nixpkgs.legacyPackages.x86_64-linux.callPackage ./modules/homemanager/programs/ags { inherit inputs; });

    nixosConfigurations = builtins.trace "Setting nixosConfigurations" {
      "nixos" = builtins.trace "Configuring nixos system" (nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = builtins.trace "Setting specialArgs" {
          inherit inputs;
          asztal = self.packages.x86_64-linux.default;
        };
        modules = builtins.trace "Setting modules" [
          ./hosts/hotrod/configuration.nix
          inputs.home-manager.nixosModules.default
          inputs.stylix.nixosModules.stylix
          inputs.nix-index-database.nixosModules.nix-index
        ];
      });
    };
  };
}
