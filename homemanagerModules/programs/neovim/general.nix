{ pkgs, ... }:
{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    enableMan = true;
    type = "lua";

    luaLoader.enable = true;

    clipboard.providers.wl-copy.enable = true;

    autoGroups = {
      edit_text = {
        clear = true;
      };
      format_on_save = {
        clear = true;
      };
      highlight_yank = {
        clear = true;
      };
    };

    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
  };
}
