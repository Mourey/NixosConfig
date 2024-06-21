{ pkgs, ... }:
{
  programs.nixvim = {
    extraLuaPackages = with pkgs.luaPackages; [
      luarocks
      lua-utils-nvim
      nvim-nio
      pathlib-nvim
    ];

    extraPlugins = with pkgs.vimPlugins; [
      nvim-web-devicons
      nvim-nio
      nui-nvim
      plenary-nvim

      (nvim-treesitter.withPlugins (p: with p; [
        tree-sitter-lua
      ]))
    ];

  };
}
