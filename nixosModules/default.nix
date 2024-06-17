{ ... }: {
  imports = [
    ./bootloader.nix
    ./environment.nix
    ./fonts.nix
    ./hardware.nix
    ./home-manager.nix
    ./networking.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./sound.nix
    ./stylix.nix
    ./system.nix
    ./time.nix
    ./user.nix
    ./virtualisation.nix
    ./xdg.nix
  ];
}
