{ ... }:
{
  imports = [
    ./programs/default.nix
    ./firefox.nix
    ./programs.nix
    #./xdg.nix
    ./neovim.nix
    ./neovim_keymaps.nix
    ./neovim_plugins.nix
    ./neorg.nix
  ];
}
