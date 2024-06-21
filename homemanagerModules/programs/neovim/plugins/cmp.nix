{ ... }: {
  programs.nixvim = {
    plugins = {
      cmp = {
        enable = true;
        autoEnableSources = true;
        settings.sources = [
          { name = "path"; }
          { name = "buffer"; }
          { name = "luasnip"; }
          { name = "otter"; }
        ];

        cmdline = {
          "/" = {
            mapping = {
              __raw = "cmp.mapping.preset.cmdline()";
            };
            sources = [
              {
                name = "buffer";
              }
            ];
          };
          ":" = {
            mapping = {
              __raw = "cmp.mapping.preset.cmdline()";
            };
            sources = [
              {
                name = "path";
              }
              {
                name = "cmdline";
                option = {
                  ignore_cmds = [
                    "Man"
                    "!"
                  ];
                };
              }
            ];
          };
        };

        settings.mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-e>" = "cmp.mapping.close()";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        };
      };

      cmp-buffer = {
        enable = true;
      };

      cmp-clippy = {
        enable = true;
      };

      cmp-cmdline-history = {

        enable = true;
      };
      cmp-git = {
        enable = true;
      };

      cmp-npm = {
        enable = true;
      };

      cmp-tmux = {
        enable = true;
      };

      cmp-treesitter = {
        enable = true;
      };

      copilot-vim = {
        enable = true;
      };
    };
  };
}
