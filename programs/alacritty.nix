{...}:
{
  programs.alacritty = {
    enable = true;
    settings = {
      window.dimensions = {
        columns = 180;
        lines = 50;
      };
      window.padding = {
        x = 2;
        y = 2;
      };
      window.opacity = 0.9;
      window.blur = true;
      window.decorations = "Full";
      font.normal = {
        family = "FiraMono Nerd Font";
        style = "Regular";
      };
      colors.cursor = {
        text = "#ffc547";
        cursor = "#ffc547";
      };
      colors.primary.foreground = "#ffffff";
      colors.primary.background = "#555555";
      colors.normal.green = "#ffc547";
      colors.normal.red = "#bbbbbb";
    };
  };
}
