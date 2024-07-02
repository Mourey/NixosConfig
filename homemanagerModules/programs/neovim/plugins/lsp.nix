{ ... }: {
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;
        inlayHints = true;
        servers = {
          tsserver.enable = true;
          lua-ls = {
            enable = true;
            settings.telemetry.enable = false;
          };
          rust-analyzer = {
            enable = true;
            installCargo = false;
            installRustc = false;
          };
          pyright.enable = true;
          nixd.enable = true;
        };
      };

      lsp-format = {
        enable = true;
      };
    };
  };
}
