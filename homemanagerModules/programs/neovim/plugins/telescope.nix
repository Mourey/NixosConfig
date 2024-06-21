{ ... }: {
  programs.nixvim = {
    plugins = {
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
  };
}
