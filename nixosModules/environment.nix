{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  environment = {
    systemPackages = with pkgs; [
      nvtopPackages.panthor
      neomutt
      nchat
      podman-tui
      podman
      kdash
      kmon
      lazydocker
      lazygit
      lazycli
      rPackages.lazysql
      damon
      cointop
      btop
      supergfxctl
      asusctl
      gvfs
      gnome-icon-theme
      hicolor-icon-theme
      papirus-icon-theme
      gjs
      gnome.adwaita-icon-theme
      adwaita-qt
      neofetch
      gtksourceview
      webkitgtk
      accountsservice
      haskellPackages.gi-dbusmenugtk3
      libdbusmenu-gtk3
      ags
      zafiro-icons
      breeze-icons
      bluez
      bluez-tools
      blueman
      bun
      lua
      obsidian
      wireguard-tools
      dig
      protonvpn-gui
      openssh
      cmake
      tomlplusplus
      cpio
      meson
      cmake
      nixfmt-classic
      nixpkgs-fmt
      nixfmt-rfc-style
      vim
      git
      xorg.setxkbmap
      xorg.xhost.out
      sway
      docker
      podman
      neovim
      lf
      wget
      home-manager
      dunst
      swww
      dart-sass
      fd
      fzf
      hyprpicker
      slurp
      wayshot
      asusctl
      supergfxctl
      brightnessctl
      matugen
      kitty
      alacritty
      dolphin
      wezterm
      tree
      rofi-wayland
      wayland
      firefox-unwrapped
      python3
      rustc
      rustup
      cargo
      zsh
      starship
      whatsapp-for-linux
      libreoffice
      libnotify
      pipewire
      wireplumber
      pavucontrol
      tmux
      gcc
      imagemagick
      xclip
      xsel
      wl-clipboard
      nodejs
      unzip
      lua-language-server
      ripgrep
      nerdfonts
      linuxHeaders
      pkg-config
      stylua
      grim
      slurp
      conjure
      swappy
      wf-recorder
      maim
      mpv
      glow
      sops
      cliphist
      expressvpn

      # Custom commands
      (import ./scripts/my-awesome-script.nix { inherit pkgs; })
      (import ./scripts/customclean.nix { inherit pkgs; })
      (import ./scripts/swap-keyboard-layout.nix { inherit pkgs; })
      (import ./scripts/screen-shots.nix { inherit pkgs; })

    ];

    variables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
      FONTCONFIG_PATH = "${pkgs.nerdfonts}/etc/fonts";
      GDK_DPI_SCALE = "1";
      GDK_SCALE = "1";
      PANGOCAIRO_BACKEND = "fontconfig";
      FONTCONFIG_FILE = "/etc/fonts/fonts.conf";
      RUST_BACKTRACE = "1";
    };
  };

}
