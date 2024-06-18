{ pkgs, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      # System Utilities
      accountsservice
      starship
      brightnessctl
      cliphist
      conjure
      glow
      grim
      imagemagick
      libnotify
      linuxHeaders
      maim
      mpv
      neofetch
      nerdfonts
      openssh
      pavucontrol
      pipewire
      pkg-config
      ripgrep
      slurp
      sops
      sway
      swappy
      tmux
      wayland
      wf-recorder
      wl-clipboard
      xclip
      xsel
      rofi-wayland
      lazygit
      lazydocker
      rPackages.lazysql

      # Communication Tools
      blueman
      nchat
      neomutt
      whatsapp-for-linux

      # Containerization and Virtualization
      docker
      podman
      podman-tui
      protonvpn-gui
      wireguard-tools

      # System Monitoring
      btop
      cointop
      damon
      kdash
      kmon
      supergfxctl
      asusctl

      # System Themes and Icons
      adwaita-qt
      ags
      breeze-icons
      gjs
      gnome-icon-theme
      gnome.adwaita-icon-theme
      gvfs
      hicolor-icon-theme
      papirus-icon-theme
      zafiro-icons

      # Bluetooth
      bluez
      bluez-tools

      # Networking
      dig

      # Keyboard
      xorg.setxkbmap
      xorg.xhost.out

      # Browsers
      firefox-unwrapped

      # Programming Languages and Tools
      bun
      cargo
      cmake
      cpio
      dart-sass
      fd
      fzf
      git
      lf
      lua
      lua-language-server
      meson
      nixfmt-classic
      nixfmt-rfc-style
      nixpkgs-fmt
      python3
      stylua
      tomlplusplus
      vim
      rustc
      rust-analyzer
      cargo

      # Terminal Emulators
      alacritty
      kitty
      # wezterm

      # File Managers
      dolphin

      # Desktop Applications
      dunst
      home-manager
      hyprpicker
      libreoffice
      matugen
      obsidian
      swww
      wayshot
    ];
  };
}
