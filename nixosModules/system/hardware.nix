{ ... }: {
  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
    pulseaudio.enable = true;
    bluetooth.enable = true;
  };

  sound = {
    enable = true;
  };
}

