{...}:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      editcon = "sudo -E nvim ~/.config/dotfiles/nixos/configuration.nix";
      viewcon = "nvim ~/.config/dotfiles/nixos/configuration.nix";
      build-switch = "sudo nixos-rebuild switch";
      build-test = "sudo nixos-rebuild test";
      cdnix = "cd ~/.config/dotfiles/nixos";
      sudonvim = "sudo -E nvim";
    };
  };
}
