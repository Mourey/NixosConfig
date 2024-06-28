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
      rPackages.lazysql
      tree
      python311Packages.conda
      conda
      direnv
      lazydocker
      clamav

      # hyprland
      pyprland
      hyprpicker
      hyprcursor
      hyprlock
      hypridle
      hyperpaper


      # some cools stuff
      cool-retro-term
      helix
      quietbrowser
      zathura
      imv

      # info fetcher
      neofetch
      onefetch
      ipfetch
      cpufetch
      ramfetch
      startfetch
      octofetch
      htop
      bottom
      zfxtop
      kmon
      dig
      speedtest-rs

      libsForQt5.qt5.qtquickcontrols2
      libsForQt5.qt5.qtgraphicaleffects

      greetd.tuigreet

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
      snowsql
      distrobox

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
      (python312Full.withPackages (ps: with ps; [ pygobject3 gobject-introspection pyqt6-sip ]))
      nodePackages_latest.nodejs
      stylua
      tomlplusplus
      vim
      rustc
      rust-analyzer
      zig
      go
      numbat


      # Terminal Emulators
      kitty
      wezterm

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
