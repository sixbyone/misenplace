{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "dela";
  home.homeDirectory = "/Users/dela";

  # Packages that should be installed to the user profile.
  home.packages = [ 
    pkgs.bat
    pkgs.bash
    pkgs.binutils
    pkgs.chafa
    pkgs.coreutils-prefixed
    pkgs.cowsay
    pkgs.direnv
    pkgs.fd
    pkgs.findutils
    pkgs.fzf
    pkgs.git
    pkgs.gnupg
    pkgs.harfbuzz
    pkgs.imagemagick
    pkgs.ispell
    pkgs.jq
    pkgs.mas
    pkgs.nginx
    pkgs.qrencode
    pkgs.rbenv
    pkgs.rustup
    pkgs.sbcl
    pkgs.starship
    pkgs.shellcheck
    pkgs.tmux
    pkgs.tree
    pkgs.youtube-dl
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
