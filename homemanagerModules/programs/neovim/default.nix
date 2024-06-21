{ ... }:
{
  import = [
    # General
    ./autocmds.nix
    ./colorschemes.nix
    ./general.nix
    ./keymaps.nix
    ./options.nix

    # Plugins
    ./plugins/default.nix
  ];
}
