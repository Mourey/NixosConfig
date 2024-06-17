{ pkgs, ... }: {
  programs = {
    nixvim = {
      enable = true;
      extraPlugins = with pkgs.vimPlugins; [ neorg neorg-telescope ];
      extraConfigLuaPost = ''
        require("neorg").setup {
          load = {
            ["core.defaults"] = {},
            ["core.concealer"] = {},
            ["core.dirman"] = {
              config = {
                  workspaces = {
                      main = "~/neorg", -- Format: <name_of_workspace> = <path_to_workspace_root>
                  },
                  default_workspace = main,
                  index = "index.norg", -- The name of the main (root) .norg file
              }
            }
          }  
        }
      '';
    };
  };
}
