{ ... }: {
  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
    pulseaudio.enable = false;
    bluetooth.enable = true;
  };
}

