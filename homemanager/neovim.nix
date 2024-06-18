{ pkgs, ... }:
{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    enableMan = true;
    type = "lua";

    luaLoader.enable = true;

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

    opts = {
      winbar = "";
      expandtab = true;
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      clipboard = "unnamedplus";
      number = true;
      relativenumber = true;
      smartindent = true;
      breakindent = true;
      incsearch = true;
      hlsearch = true;
      wrap = true;
      splitbelow = true;
      splitright = true;
      mouse = "a";
      ignorecase = true;
      smartcase = true;
      updatetime = 500;
      completeopt = "menu,noselect";
      undofile = true;
      signcolumn = "yes";
      cursorline = true;
      foldcolumn = "0";
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;
      scrolloff = 5;
      colorcolumn = "";
      guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,i:blinkwait700-blinkoff400-blinkon25,n:blinkon0";
    };

    autoCmd = [
      {
        event = [ "FileType" ];
        pattern = [ "gitcommit" "markdown" "txt" ];
        callback = { __raw = "function() vim.opt_local.wrap = true vim.opt_local.spell = true end"; };
        group = "edit_text";
      }
      {
        event = [ "BufWritePre" ];
        pattern = [ "*" ];
        callback = { __raw = "function() vim.lsp.buf.format({ timeout_ms = 1000}) end"; };
        group = "format_on_save";
      }
      {
        event = [ "TextYankPost" ];
        pattern = [ "*" ];
        callback = { __raw = "function() vim.highlight.on_yank({higroup='IncSearch', timeout=200, visual=true}) end"; };
        group = "highlight_yank";
      }
    ];

    extraLuaPackages = with pkgs.luaPackages; [
      luarocks
      lua-utils-nvim
      nvim-nio
      pathlib-nvim
    ];
  };
}
