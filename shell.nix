{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "dev-env";

  buildInputs = with pkgs; [
    zsh
    neovim
    curl
    git
    fzf
    btop
    bat
    lsd
    ripgrep
    tldr
    duf
    jq
    sd
    lazygit
    yazi
    procs
    gitui
    navi
    neofetch
    python3
    tmux
    xclip
    rustup
  ];

  shellHook = ''
    export ZDOTDIR=$PWD/.zsh_env
    mkdir -p $ZDOTDIR

    cp .zshrc $ZDOTDIR/.zshrc
    cp .p10k.zsh $ZDOTDIR/.p10k.zsh

    # Install Oh My Zsh and plugins if not already installed
    ./install-plugins.zsh

    export SHELL=$(which zsh)
    exec zsh
  '';
}
