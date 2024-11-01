{ pkgs, ... }:
{
  fonts = {
    enableDefaultPackages = true;
    fontconfig.defaultFonts.monospace = [ "FiraCode Nerd Font Mono" ];
    fontDir.enable = true;
    packages = with pkgs; [
      fira-go
      inconsolata-lgc
      material-symbols
      nerdfonts
      noto-fonts
      noto-fonts-color-emoji
      rictydiminished-with-firacode
      roboto
    ];
  };
}