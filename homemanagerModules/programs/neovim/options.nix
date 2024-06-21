{ pkgs, ... }:
{
  programs.nixvim = {
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
  };
}
