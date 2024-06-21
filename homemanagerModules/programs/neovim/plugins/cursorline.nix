{ ... }: {
  programs.nixvim = {
    plugins = {
      cursorline = {
        enable = true;
        cursorline = {
          enable = true;
          number = true;
        };
      };
    };
  };
}
