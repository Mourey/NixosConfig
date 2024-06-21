{ ... }:
{
  programs.nixvim = {
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
  };
}
