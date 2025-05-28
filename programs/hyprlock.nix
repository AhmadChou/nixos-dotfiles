{...}:
{
  programs.hyprlock = {
    enable = true;
    settings = {
      "$font" = "FiraMono Nerd Font";

      general = {
        hide_cursor = false;
      };

      animations = {
        enabled = true;
        bezier = "linear, 1, 1, 0, 0";
        animation = [
          "fadeIn, 1, 5, linear"
          "fadeOut, 1, 5, linear"
          "inputFieldDots, 1, 2, linear"
        ];
      };

      background = {
        monitor = "";
        path = "screenshot";
        blur_passes = 3;
      };

      input-field = {
        monitor = "";
        size = "20%, 5%";
        outline_thickness = 3;
        inner_color = "rgba(0, 0, 0, 0.3)";
        outer_color = "rgba(ffffffee) rgba(bbbbbbee) 45deg";
        check_color = "rgba(ffc547ee)";
        fail_color = "rgba(f54269ee)";
        font_color = "rgb(ffffff)";
        fade_on_empty = false;
        rounding = 15;
        font_family = "$font";
        placeholder_text = "Enter...";
        fail_text = "ERROR: $PAMFAIL";
        dots_text_format = "/";
        dots_size = 0.4;
        dots_spacing = 0.3;
        dots_center = true;
        position = "0, 0";
        halign = "center";
        valign = "center";
      };

      label = [
        {
          monitor = "";
          text = "$TIME";
          font_size = 40;
          font_family = "$font";
          position = "0, 100";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}
