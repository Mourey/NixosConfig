{ ... }: {
  programs.nixvim = {
    plugins = {
      bufferline = {
        enable = true;
        hover = {
          enabled = true;
        };
      };
    };
  };
}
