{...}:
{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    systemd.target = "hyprland-session.target";

    settings = {
      mainBar = {
        layer = "top";
        reload_style_on_change = true;

        modules-center = [
          "hyprland/workspaces"
        ];

        modules-left = [
          "tray"
        ];

        modules-right = [
          "group/hardware"
          "pulseaudio"
          "network"
          "battery"
          "clock"
          "group/power"
        ];

        "hyprland/window" = {
          max-length = 50;
        };

        battery = {
          format = "{icon}";
          format-icons = [
            ""
            ""
            ""
            ""
            ""
          ];
          tooltip-format = "{capacity}% ({timeTo})";
        };

        clock = {
          format-alt = "{:%a %d %b  %H:%M}";
          tooltip-format = "{:%D}";
        };

        network = {
          format-wifi = "{icon}";
          tooltip-format = "{essid} ({signalStrength}%)";
          format-icons = [
            "󰤯"
            "󰤟"
            "󰤢"
            "󰤥"
            "󰤨"
          ];
        };

        pulseaudio = {
          format = "{icon} {volume}%";
          format-icons = [
            ""
            ""
            ""
          ];
        };

        cpu = {
          format = "{icon} {usage}%";
          format-icons = [
            ""
          ];
        };

        memory = {
          format = "{icon} {percentage}%";
          format-icons = [
            ""
          ];
        };

        tray = {
          icon-size = 20;
          spacing = 10;
        };

        "custom/power" = {
          format = "{icon}";
          format-icons = [
            ""
          ];
          tooltip-format = "Power Off";
          on-click = "poweroff";
        };

        "custom/reboot" = {
          format = "{icon}";
          format-icons = [
            ""
          ];
          tooltip-format = "Reboot";
          on-click = "reboot";
        };

        "custom/lock" = {
          format = "{icon}";
          format-icons = [
            "󰌾"
          ];
          tooltip-format = "Lock";
          on-click = "hyprlock --immediate";
        };

        "group/hardware" = {
          orientation = "inherit";
          modules = [
            "cpu"
            "memory"
          ];
        };

        "group/power" = {
          orientation = "inherit";
          drawer = {
            transition-duration = 500;
            children-class = "not-power";
            transition-left-to-right = false;
          };
          modules = [
            "custom/power"
            "custom/reboot"
            "custom/lock"
          ];
        };

        "hyprland/workspaces" = {
          format = "{icon}";
          format-icons = {
            active = "";
            default = "";
          };
          persistent-workspaces = {
            "*" = 3;
          };
        };
      };
    };

    style = '' 
      * {
          font-family: FiraMono Nerd Font;
      }

      window#waybar {
        background: transparent;
        margin-top: 4px;
      }

      window {
        color: #ffffff;
      }

      .modules-right {
        background: transparent;
        border-radius: 10px;
        margin-right: 20px;
      }

      .modules-left {
        background: transparent;
        margin-left: 10px;
      }

      .modules-center {
        background-color: rgba(120, 120, 120, 0.4);
        border-radius: 10px;
        padding-right: 4px;
      }

      #network {
        margin-right: 20px;
        color: #ffffff;
      }

      #battery {
        margin-right: 20px;
        color: #ffffff;
      }

      #clock {
        margin-right: 10px;
        background-color: rgba(100, 100, 100, 0.6);
        color: #ffffff;
        padding: 0 12px;
        border-radius: 10px;
      }

      #pulseaudio {
        margin-right: 20px;
        color: #ffffff;
        background: transparent;
      }

      #hardware {
        margin-right: 20px;
        margin-left: 20px;
        padding: 0 20px;
        background-color: rgba(100, 100, 100, 0.6);
        border-radius: 10px;
      }

      #cpu {
        margin-right: 20px;
      }

      #custom-power {
        background: transparent;
        margin-right: 10px;
        margin-left: 10px;
      }

      #custom-reboot {
        margin: 0 10px;
      }

      #custom-lock {
        margin: 0 10px;
      }

      #custom-power:hover {
        color: #fa3983;
        text-shadow: 0 0 4px #fa3983;
      }
      
      #custom-reboot:hover {
        color: #129bdb;
        text-shadow: 0 0 4px #129bdb;
      }

      #custom-lock:hover {
        color: #f7db23;
        text-shadow: 0 0 4px #f7db23;
      }

      #tray {
        background-color: rgba(180, 180, 180, 0.6);
        color: #ffffff;
        padding: 0 12px;
        border-radius: 20px;
      } 

      #tray menu {
        background-color: rgba(100, 100, 100, 0.2);
        border-radius: 20px;
      }

      #workspaces button {
        color: #ffffff;
        padding: 0 10px;
        font-size: 16px;
      }
    '';
  };
}
