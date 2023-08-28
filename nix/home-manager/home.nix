{
  config,
  pkgs,
  ...
}: {
  home = {
    homeDirectory = if pkgs.stdenv.isLinux then "/home/eduardo" else "/Users/eduardo";

    packages = with pkgs; [
      asciiquarium
      bat
      bottom
      cachix
      cmatrix
      cocogitto
      coreutils
      coursier
      cowsay
      delta
      direnv
      dive
      docker
      docker-compose
      dogdns
      doppler
      duf
      exa
      fd
      figlet
      fx
      fzf
      gh
      git
      glow
      graphviz
      gum
      heroku
      htop
      ipfetch
      jdk
      keychain
      less
      lolcat
      mosh
      ncdu
      neofetch
      neovim
      ngrok
      nix-direnv
      nvd
      ookla-speedtest
      pass
      pulumi
      ripgrep
      sbt
      sl
      starship
      stow
      tig
      tree
      unzip
      zip
      zsh
    ];

    stateVersion = "23.05";
    username = "eduardo";
  };


  programs.home-manager.enable = true;
}