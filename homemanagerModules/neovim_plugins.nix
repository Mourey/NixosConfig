{ pkgs, ... }: {

  programs.nixvim = {
    colorschemes.catppuccin.enable = true;

    # Clipboard
    clipboard.providers.wl-copy.enable = true;

    # List of all plugins avaibale
    plugins = {
      lualine.enable = true;
      luasnip.enable = true;
      auto-session.enable = true;
      barbar.enable = true;

      cursorline = {
        enable = true;
        cursorline = {
          enable = true;
          number = true;
        };
      };


      bufferline = {
        enable = true;
        hover.enabled = true;
      };


      lsp = {
        enable = true;
        servers = {
          tsserver.enable = true;
          lua-ls = {
            enable = true;
            settings.telemetry.enable = false;
          };
          rust-analyzer = {
            enable = true;
            installCargo = true;
            installRustc = true;
          };
          pyright.enable = true;
          nixd.enable = true;
        };
      };


      autoclose = {
        enable = true;

      };

      alpha = {
        enable = true;
        theme = "dashboard";
        iconsEnabled = true;
      };

      comment.enable = true;

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

      cmp-buffer.enable = true;
      cmp-clippy.enable = true;
      cmp-cmdline-history.enable = true;
      cmp-git.enable = true;
      cmp-npm.enable = true;
      cmp-tmux.enable = true;
      cmp-treesitter.enable = true;
      copilot-vim.enable = true;
      dressing.enable = true;
      dap.enable = true;
      fidget.enable = true;
      gitsigns.enable = true;
      gitignore.enable = true;
      harpoon = {
        enable = true;
      };

      friendly-snippets.enable = true;
      helm.enable = true;
      indent-blankline.enable = true;
      lazygit.enable = true;
      markdown-preview.enable = true;
      mini.enable = true;
      neo-tree.enable = true;
      none-ls = {
        enable = true;
        enableLspFormat = true;
      };
      lsp-format = {
        enable = true;
      };

      oil.enable = true;
      ollama.enable = true;
      notify.enable = true;
      spectre.enable = true;
      tmux-navigator.enable = true;
      todo-comments.enable = true;
      treesitter = {
        enable = true;
        grammarPackages = with pkgs.tree-sitter-grammars; [
          tree-sitter-norg
          tree-sitter-norg-meta
        ];
        nixGrammars = true;

      };
      treesitter-context.enable = true;
      treesitter-refactor.enable = true;
      treesitter-textobjects.enable = true;

      which-key.enable = true;
      wilder = {
        enable = true;
        enableCmdlineEnter = true;
      };
      noice.enable = true;

      telescope = {
        enable = true;
        extensions = {
          fzf-native.enable = true;
        };
        keymaps = {

          "<C-p>" = {
            action = "find_files";
            mode = "n";
            options = {
              desc = "Find git files";
            };
          };

          "<leader>fg" = {
            action = "live_grep";
            mode = "n";
            options = {
              desc = "Find in files";
            };
          };

          "<leader>sh" = {
            action = "search_history";
            mode = "n";
            options = {
              desc = "Search history";
            };
          };

          "<leader>sk" = {
            action = "keymaps";
            mode = "n";
            options = {
              desc = "Search keystrokes";
            };
          };

          "<leader>ss" = {
            action = "builtin";
            mode = "n";
            options = {
              desc = "Search";
            };
          };

          "<leader>sw" = {
            action = "grep_string";
            mode = "n";
            options = {
              desc = "Search word";
            };
          };

          "<leader>sd" = {
            action = "diagnostics";
            mode = "n";
            options = {
              desc = "Search buffer";
            };
          };

          "<leader>sr" = {
            action = "resume";
            mode = "n";
            options = {
              desc = "Resume last picker";
            };
          };

          "<leader>s." = {
            action = "oldfiles";
            mode = "n";
            options = {
              desc = "search files";
            };
          };

          "<leader><leader>" = {
            action = "buffers";
            mode = "n";
            options = {
              desc = "search buffers";
            };
          };
        };
      };
    };


    extraLuaPackages = luaPkgs: with luaPkgs; [
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
