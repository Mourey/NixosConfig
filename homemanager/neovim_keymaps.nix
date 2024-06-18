{ ... }: {

  programs.nixvim = {


    keymaps = [
      {
        action = "<ESC>";
        key = "jj";
        mode = "i";
        options = {
          desc = "Exit insert mode";
        };
      }

      {
        action = "<cmd>tabnew<CR>";
        key = "<leader>to";
        mode = "n";
        options = {
          desc = "Open a new tab";
        };
      }

      {
        action = "<cmd>tabclose<CR>";
        key = "<leader>ct";
        mode = "n";
        options = {
          desc = "Close the current buffer";
        };
      }

      {
        action = "<cmd>tabonly<CR>";
        key = "<leader>ta";
        mode = "n";
        options = {
          desc = "Close all other buffers";
          noremap = true;
        };
      }

      {
        action = "<cmd>tabnext<CR>";
        key = "<leader>tn";
        mode = "n";
        options = {
          desc = "Move to the next buffer";
        };
      }

      {
        action = "<cmd>tabprevious<CR>";
        key = "<leader>tp";
        mode = "n";
        options = {
          desc = "Move to the previous buffer";
        };
      }

      {
        action = "<C-^>";
        key = "<leader>'";
        mode = "n";
        options = {
          desc = "Switch to last buffer";
        };
      }

      {
        action = "<cmd>w<cr>";
        key = "<leader>w";
        mode = "n";
        options = {
          desc = "Save the current buffer";
        };
      }

      {
        action = "<cmd>q<cr>";
        key = "<leader>q";
        mode = "n";
        options = {
          desc = "Quit the current buffer";
        };
      }

      {
        action = "<cmd>wq<cr>";
        key = "<leader>z";
        mode = "n";
        options = {
          desc = "Save and quit the current buffer";
        };
      }

      {
        action = {
          __raw = ''
            function()
             if vim.fn.exists(":KittyNavigateUp") ~= 0 and TERM == "xterm-kitty" then
             		vim.cmd.KittyNavigateUp()
             	elseif vim.fn.exists(":NvimTmuxNavigateUp") ~= 0 then
             		vim.cmd.NvimTmuxNavigateUp()
             	else
             		vim.cmd.wincmd("k")
             	end
             end
          '';
        };
        key = "<C-k>";
        mode = "n";
        options = {
          desc = "Move up";
        };
      }

      {
        action = {
          __raw = ''
            function()
             if vim.fn.exists(":KittyNavigateDown") ~= 0 and TERM == "xterm-kitty" then
             		vim.cmd.KittyNavigateDown()
             	elseif vim.fn.exists(":NvimTmuxNavigateDown") ~= 0 then
             		vim.cmd.NvimTmuxNavigateDown()
             	else
             		vim.cmd.wincmd("j")
             	end
             end
          '';
        };
        key = "<C-j>";
        mode = "n";
        options = {
          silent = true;
          desc = "Move down";
        };
      }

      {
        action = {
          __raw = ''
            function()
             if vim.fn.exists(":KittyNavigateLeft") ~= 0 and TERM == "xterm-kitty" then
             		vim.cmd.KittyNavigateLeft()
             	elseif vim.fn.exists(":NvimTmuxNavigateLeft") ~= 0 then
             		vim.cmd.NvimTmuxNavigateLeft()
             	else
             		vim.cmd.wincmd("h")
             	end
             end
          '';
        };
        key = "<C-h>";
        mode = "n";
        options = {
          silent = true;
          desc = "Move left";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("oil").toggle_float()
            end
          '';
        };
        key = "<leader>e";
        mode = "n";
        options = {
          silent = true;
          desc = "Toggle Oil float";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("oil").select_tab()
            end
          '';
        };
        key = "<leader>tt";
        mode = "n";
        options = {
          silent = true;
          desc = "Select Oil tab";
        };
      }

      {
        action = "<C-u>zz";
        key = "<C-u>";
        mode = "n";
        options = {
          silent = true;
          desc = "Scroll up and center";
        };
      }

      {
        action = "<C-d>zz";
        key = "<C-d>";
        mode = "n";
        options = {
          silent = true;
          desc = "Scroll down and center";
        };
      }

      {
        action = "{zz";
        key = "{";
        mode = "n";
        options = {
          silent = true;
          desc = "Move up by paragraph and center";
        };
      }

      {
        action = "}zz";
        key = "}";
        mode = "n";
        options = {
          silent = true;
          desc = "Move down by paragraph and center";
        };
      }

      {
        action = "Nzz";
        key = "N";
        mode = "n";
        options = {
          silent = true;
          desc = "Repeat search backwards and center";
        };
      }

      {
        action = "nzz";
        key = "n";
        mode = "n";
        options = {
          silent = true;
          desc = "Repeat search forwards and center";
        };
      }

      {
        action = "Gzz";
        key = "G";
        mode = "n";
        options = {
          silent = true;
          desc = "Go to end of file and center";
        };
      }

      {
        action = "ggzz";
        key = "gg";
        mode = "n";
        options = {
          silent = true;
          desc = "Go to start of file and center";
        };
      }

      {
        action = "<C-i>zz";
        key = "<C-i>";
        mode = "n";
        options = {
          silent = true;
          desc = "Jump forward and center";
        };
      }

      {
        action = "<C-o>zz";
        key = "<C-o>";
        mode = "n";
        options = {
          silent = true;
          desc = "Jump back and center";
        };
      }

      {
        action = "%zz";
        key = "%";
        mode = "n";
        options = {
          silent = true;
          desc = "Go to matching character and center";
        };
      }

      {
        action = "*zz";
        key = "*";
        mode = "n";
        options = {
          silent = true;
          desc = "Search for word under cursor and center";
        };
      }

      {
        action = "#zz";
        key = "#";
        mode = "n";
        options = {
          silent = true;
          desc = "Search for word under cursor backwards and center";
        };
      }

      {
        action = {
          __raw = ''
            function()
              local cmd = ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>"
              local keys = vim.api.nvim_replace_termcodes(cmd, true, false, true)
              vim.api.nvim_feedkeys(keys, "n", false)
            end
          '';
        };
        key = "S";
        mode = "n";
        options = {
          silent = true;
          desc = "Quick find/replace";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("spectre").toggle()
            end
          '';
        };
        key = "<leader>S";
        mode = "n";
        options = {
          silent = true;
          desc = "Toggle Spectre";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("spectre").open_visual({ select_word = true })
            end
          '';
        };
        key = "<leader>sw";
        mode = "n";
        options = {
          silent = true;
          desc = "Search current word with Spectre";
        };
      }

      {
        action = "$";
        key = "L";
        mode = "n";
        options = {
          silent = true;
          desc = "Jump to end of line";
        };
      }

      {
        action = "^";
        key = "H";
        mode = "n";
        options = {
          silent = true;
          desc = "Jump to start of line";
        };
      }

      {
        action = "<C-r>";
        key = "U";
        mode = "n";
        options = {
          silent = true;
          desc = "Redo";
        };
      }
      {
        action = "<cmd>noh<cr>";
        key = "<leader>no";
        mode = "n";
        options = {
          desc = "Turn off search highlighting";
        };
      }

      {
        action = {
          __raw = ''
            function()
              vim.diagnostic.goto_next({})
              vim.api.nvim_feedkeys("zz", "n", false)
            end
          '';
        };
        key = "]d";
        mode = "n";
        options = {
          silent = true;
          desc = "Go to next diagnostic";
        };
      }

      {
        action = {
          __raw = ''
            function()
              vim.diagnostic.goto_prev({})
              vim.api.nvim_feedkeys("zz", "n", false)
            end
          '';
        };
        key = "[d";
        mode = "n";
        options = {
          silent = true;
          desc = "Go to previous diagnostic";
        };
      }

      {
        action = {
          __raw = ''
            function()
              vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
              vim.api.nvim_feedkeys("zz", "n", false)
            end
          '';
        };
        key = "]e";
        mode = "n";
        options = {
          silent = true;
          desc = "Go to next error diagnostic";
        };
      }

      {
        action = {
          __raw = ''
            function()
              vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
              vim.api.nvim_feedkeys("zz", "n", false)
            end
          '';
        };
        key = "[e";
        mode = "n";
        options = {
          silent = true;
          desc = "Go to previous error diagnostic";
        };
      }

      {
        action = {
          __raw = ''
            function()
              vim.diagnostic.config({ virtual_text = not vim.diagnostic.config().virtual_text, underline = not vim.diagnostic.config().virtual_text, signs = not vim.diagnostic.config().virtual_text })
            end
          '';
        };
        key = "<leader>dy";
        mode = "n";
        options = {
          silent = true;
          desc = "Toggle diagnostics display";
        };
      }

      {
        action = {
          __raw = ''
            function()
              vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })
              vim.api.nvim_feedkeys("zz", "n", false)
            end
          '';
        };
        key = "]w";
        mode = "n";
        options = {
          silent = true;
          desc = "Go to next warning diagnostic";
        };
      }

      {
        action = {
          __raw = ''
            function()
              vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })
              vim.api.nvim_feedkeys("zz", "n", false)
            end
          '';
        };
        key = "[w";
        mode = "n";
        options = {
          silent = true;
          desc = "Go to previous warning diagnostic";
        };
      }

      {
        action = {
          __raw = ''
            function()
              vim.diagnostic.open_float({ border = "rounded" })
            end
          '';
        };
        key = "<leader>d";
        mode = "n";
        options = {
          silent = true;
          desc = "Open diagnostic float";
        };
      }

      {
        action = "vim.diagnostic.setqflist()";
        key = "<leader>ld";
        mode = "n";
        options = {
          silent = true;
          desc = "Quickfix List Diagnostics";
        };
      }
      {
        action = ":cnext<cr>zz";
        key = "<leader>cn";
        mode = "n";
        options = {
          silent = true;
          desc = "Go to next quickfix item";
        };
      }

      {
        action = ":cprevious<cr>zz";
        key = "<leader>cp";
        mode = "n";
        options = {
          silent = true;
          desc = "Go to previous quickfix item";
        };
      }

      {
        action = ":copen<cr>zz";
        key = "<leader>co";
        mode = "n";
        options = {
          silent = true;
          desc = "Open quickfix list";
        };
      }

      {
        action = ":cclose<cr>zz";
        key = "<leader>cc";
        mode = "n";
        options = {
          silent = true;
          desc = "Close quickfix list";
        };
      }

      {
        action = ":MaximizerToggle<cr>";
        key = "<leader>m";
        mode = "n";
        options = {
          silent = true;
          desc = "Toggle Maximizer";
        };
      }

      {
        action = "<C-w>=";
        key = "<leader>=";
        mode = "n";
        options = {
          silent = true;
          desc = "Equalize window sizes";
        };
      }

      {
        action = ":Format<cr>";
        key = "<leader>f";
        mode = "n";
        options = {
          silent = true;
          desc = "Format buffer";
        };
      }

      {
        action = ":RotateWindows<cr>";
        key = "<leader>rw";
        mode = "n";
        options = {
          silent = true;
          desc = "Rotate windows";
        };
      }

      {
        action = ":sil !open <cWORD><cr>";
        key = "gx";
        mode = "n";
        options = {
          silent = true;
          desc = "Open link under cursor";
        };
      }

      {
        action = ":TSC<cr>";
        key = "<leader>tc";
        mode = "n";
        options = {
          silent = true;
          desc = "TypeScript Compile";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("harpoon.ui").toggle_quick_menu()
            end
          '';
        };
        key = "<leader>ho";
        mode = "n";
        options = {
          silent = true;
          desc = "Open Harpoon UI";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("harpoon.mark").add_file()
            end
          '';
        };
        key = "<leader>ha";
        mode = "n";
        options = {
          silent = true;
          desc = "Add file to Harpoon";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("harpoon.mark").rm_file()
            end
          '';
        };
        key = "<leader>hr";
        mode = "n";
        options = {
          silent = true;
          desc = "Remove file from Harpoon";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("harpoon.mark").clear_all()
            end
          '';
        };
        key = "<leader>hc";
        mode = "n";
        options = {
          silent = true;
          desc = "Clear all Harpoon marks";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("harpoon.ui").nav_file(1)
            end
          '';
        };
        key = "<leader>1";
        mode = "n";
        options = {
          silent = true;
          desc = "Navigate to Harpoon file 1";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("harpoon.ui").nav_file(2)
            end
          '';
        };
        key = "<leader>2";
        mode = "n";
        options = {
          silent = true;
          desc = "Navigate to Harpoon file 2";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("harpoon.ui").nav_file(3)
            end
          '';
        };
        key = "<leader>3";
        mode = "n";
        options = {
          silent = true;
          desc = "Navigate to Harpoon file 3";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("harpoon.ui").nav_file(4)
            end
          '';
        };
        key = "<leader>4";
        mode = "n";
        options = {
          silent = true;
          desc = "Navigate to Harpoon file 4";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("harpoon.ui").nav_file(5)
            end
          '';
        };
        key = "<leader>5";
        mode = "n";
        options = {
          silent = true;
          desc = "Navigate to Harpoon file 5";
        };
      }

      {
        action = ":Gitsigns toggle_current_line_blame<cr>";
        key = "<leader>gb";
        mode = "n";
        options = {
          silent = true;
          desc = "Toggle Git line blame";
        };
      }

      {
        action = ":SymbolsOutline<cr>";
        key = "<leader>so";
        mode = "n";
        options = {
          silent = true;
          desc = "Toggle Symbols Outline";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("copilot.panel").open({})
            end
          '';
        };
        key = "<leader>oc";
        mode = "n";
        options = {
          silent = true;
          desc = "[O]pen [C]opilot panel";
        };
      }

      {
        action = "<esc>";
        key = "jj";
        mode = "i";
        options = {
          silent = true;
          desc = "Exit insert mode";
        };
      }

      {
        action = "<nop>";
        key = "<space>";
        mode = "v";
        options = {
          silent = true;
          desc = "Disable Space in visual mode";
        };
      }

      {
        action = "$<left>";
        key = "L";
        mode = "v";
        options = {
          silent = true;
          desc = "Jump to end of line";
        };
      }

      {
        action = "^";
        key = "H";
        mode = "v";
        options = {
          silent = true;
          desc = "Jump to start of line";
        };
      }

      {
        action = ":m '>+1<CR>gv=gv";
        key = "<A-j>";
        mode = "v";
        options = {
          silent = true;
          desc = "Move selected text down";
        };
      }

      {
        action = ":m '<-2<CR>gv=gv";
        key = "<A-k>";
        mode = "v";
        options = {
          silent = true;
          desc = "Move selected text up";
        };
      }

      {
        action = {
          __raw = ''
            function()
              xnoremap("<leader>p", '"_dP')
              vim.cmd("normal! <<")
              vim.cmd("normal! gv")
            end
          '';
        };
        key = "<<";
        mode = "x";
        options = {
          silent = true;
          desc = "Indent left and reselect";
        };
      }

      {
        action = {
          __raw = ''
            function()
              vim.cmd("normal! >>")
              vim.cmd("normal! gv")
            end
          '';
        };
        key = ">>";
        mode = "x";
        options = {
          silent = true;
          desc = "Indent right and reselect";
        };
      }

      {
        action = "<space>";
        key = "<space>";
        mode = "t";
        options = {
          silent = true;
          desc = "Enable Space in terminal mode";
        };
      }

      {
        action = ":DapToggleBreakpoint<CR>";
        key = "<leader>dt";
        mode = "n";
        options = {
          silent = true;
          desc = "Toggle DAP breakpoint";
        };
      }

      {
        action = ":DapContinue<CR>";
        key = "<leader>dc";
        mode = "n";
        options = {
          silent = true;
          desc = "Continue DAP";
        };
      }

      {
        action = ":DapTerminate<CR>";
        key = "<leader>dx";
        mode = "n";
        options = {
          silent = true;
          desc = "Terminate DAP";
        };
      }

      {
        action = ":DapStepOver<CR>";
        key = "<leader>do";
        mode = "n";
        options = {
          silent = true;
          desc = "Step Over in DAP";
        };
      }

      {
        action = ":Neotree filesystem reveal right<CR>";
        key = "<leader>nn";
        mode = "n";
        options = {
          silent = true;
          desc = "Reveal Neotree filesystem on the right";
        };
      }

      {
        action = ":Neotree close<CR>";
        key = "<leader>nf";
        mode = "n";
        options = {
          silent = true;
          desc = "Close Neotree";
        };
      }

      {
        action = ":Neotree buffers reveal float<CR>";
        key = "<leader>bf";
        mode = "n";
        options = {
          silent = true;
          desc = "Reveal Neotree buffers in float";
        };
      }

      {
        action = "<cmd>SessionRestore<CR>";
        key = "<leader>bb";
        mode = "n";
        options = {
          silent = true;
          desc = "Restore session";
        };
      }

      {
        action = "<cmd>SessionSave<CR>";
        key = "<leader>mm";
        mode = "n";
        options = {
          silent = true;
          desc = "Save session";
        };
      }

      {
        action = {
          __raw = ''
            function()
              require("auto-session.session-lens").search_session()
            end
          '';
        };
        key = "<C-s>";
        mode = "n";
        options = {
          silent = true;
          noremap = true;
          desc = "Search sessions with Session Lens";
        };
      }

      {
        action = "<nop>";
        key = "<space>";
        mode = "n";
        options = {
          silent = true;
          desc = "remove space";
        };
      }

    ];



  };


}
