{ pkgs, ... }: {
  programs.nixvim = {
    plugins = {
      treesitter = {
        enable = true;
        grammarPackages = with pkgs.tree-sitter-grammars; [
          tree-sitter-norg
          tree-sitter-norg-meta
        ];
        nixGrammars = true;
      };

      treesitter-context = {
        enable = true;
      };

      treesitter-refactor = {
        enable = true;
      };

      treesitter-textobjects = {
        enable = true;
      };
    };
  };
}
