{ config, pkgs, lib, ... }:

{
  wayland.windowManager.sway = {
    enable = true;
    checkConfig = false;
    wrapperFeatures.gtk = true;

    config = rec {
      modifier = "Mod4"; # SUPER key

      # Use same terminal as hyprland start.sh
      terminal = "foot";

      # Disable sway's default bar (using waybar like hyprland)
      bars = [];

      startup = [
        { command = "bash ~/.config/hypr/start.sh"; }
      ];

      input = {
        "*" = {
          xkb_layout = "us";
          accel_profile = "flat";
          pointer_accel = "0";
        };
      };

      output = {
        "*" = {
          bg = "#000000 solid_color";
        };
      };

      gaps = {
        inner = 5;
        outer = 10;
      };

      window = {
        border = 2;
        titlebar = false;
      };

      floating = {
        border = 2;
        titlebar = false;
      };

      colors = {
        focused = {
          border = "#00ace6";
          background = "#00ace6";
          text = "#ffffff";
          indicator = "#00E100";
          childBorder = "#00ace6";
        };
        unfocused = {
          border = "#004c66";
          background = "#004c66";
          text = "#888888";
          indicator = "#007100";
          childBorder = "#004c66";
        };
        focusedInactive = {
          border = "#004c66";
          background = "#004c66";
          text = "#888888";
          indicator = "#007100";
          childBorder = "#004c66";
        };
      };

      # Window rules (assign + floating)
      assigns = {
        "1" = [{ app_id = "^(brave|firefox)$"; }];
        "8" = [{ app_id = "^(lutris|heroic)$"; }];
        "9" = [{ app_id = "^steam$"; }];
        "10" = [{ app_id = "^steam_app_.*$"; }];
      };

      floating.criteria = [
        { app_id = "yubioath-flutter-wrapped"; }
        { app_id = "steamtinkerlaunch"; }
        { app_id = "catfish"; }
        { app_id = "ulauncher"; }
        { title = "Picture-in-Picture"; }
      ];

      # Keybinds
      keybindings = lib.mkOptionDefault {

        # Apps
        "${modifier}+b"             = "exec brave";
        "${modifier}+q"             = "exec firefox";
        "${modifier}+l"             = "exec librewolf";
        "${modifier}+e"             = "exec thunar";
        "${modifier}+n"             = "exec swaync-client -t -sw";
        "${modifier}+space"         = "exec rofi -show drun -show-icons -disable-history -theme sidebar";
        "${modifier}+Shift+space"   = "exec catfish";
        "${modifier}+period"        = "exec rofimoji";
        "${modifier}+backslash"     = "exec rofi-vpn";
        "${modifier}+r"             = "exec wofi --show drun";

        # Screenshot (closest sway equiv to hyprshot -m region)
        "Print"                     = "exec grim -g \"$(slurp)\" - | wl-copy";

        # Kill window (hyprland uses K, sway default is q — keeping both)
        "${modifier}+k"             = "kill";

        # Fullscreen
        "${modifier}+f"             = "fullscreen toggle";

        # Floating toggle
        "${modifier}+v"             = "floating toggle";

        # Focus
        "${modifier}+Left"          = "focus left";
        "${modifier}+Right"         = "focus right";
        "${modifier}+Up"            = "focus up";
        "${modifier}+Down"          = "focus down";

        # Workspaces
        "${modifier}+1"             = "workspace number 1";
        "${modifier}+2"             = "workspace number 2";
        "${modifier}+3"             = "workspace number 3";
        "${modifier}+4"             = "workspace number 4";
        "${modifier}+5"             = "workspace number 5";
        "${modifier}+6"             = "workspace number 6";
        "${modifier}+7"             = "workspace number 7";
        "${modifier}+8"             = "workspace number 8";
        "${modifier}+9"             = "workspace number 9";
        "${modifier}+0"             = "workspace number 10";

        # Move to workspace
        "${modifier}+Shift+1"       = "move container to workspace number 1";
        "${modifier}+Shift+2"       = "move container to workspace number 2";
        "${modifier}+Shift+3"       = "move container to workspace number 3";
        "${modifier}+Shift+4"       = "move container to workspace number 4";
        "${modifier}+Shift+5"       = "move container to workspace number 5";
        "${modifier}+Shift+6"       = "move container to workspace number 6";
        "${modifier}+Shift+7"       = "move container to workspace number 7";
        "${modifier}+Shift+8"       = "move container to workspace number 8";
        "${modifier}+Shift+9"       = "move container to workspace number 9";
        "${modifier}+Shift+0"       = "move container to workspace number 10";

        # Scroll through workspaces
        "--whole-window ${modifier}+button5" = "workspace next";
        "--whole-window ${modifier}+button4" = "workspace prev";

        # Scratchpad equivalents (sway has one scratchpad, mapped to magic like hyprland)
        "${modifier}+x"             = "scratchpad show";
        "${modifier}+Shift+x"       = "move scratchpad";

        # Layout / dwindle-ish
        "${modifier}+p"             = "layout toggle split"; # pseudo equiv
        "${modifier}+j"             = "layout toggle split";

        # Misc hardware keys
        "XF86Calculator"            = "exec qalculate-qt";
        "XF86Tools"                 = "exec audacious";

        # Monitor brightness via ddcutil
        "${modifier}+ctrl+equal"    = "exec ddcutil setvcp 10 + 10";
        "${modifier}+ctrl+minus"    = "exec ddcutil setvcp 10 - 10";
        "${modifier}+ctrl+Escape"   = "exec ddcutil setvcp 10 0";
        "${modifier}+ctrl+1"        = "exec ddcutil setvcp 10 10";
        "${modifier}+ctrl+2"        = "exec ddcutil setvcp 10 20";
        "${modifier}+ctrl+3"        = "exec ddcutil setvcp 10 30";
        "${modifier}+ctrl+4"        = "exec ddcutil setvcp 10 40";
        "${modifier}+ctrl+5"        = "exec ddcutil setvcp 10 50";
        "${modifier}+ctrl+6"        = "exec ddcutil setvcp 10 60";
        "${modifier}+ctrl+7"        = "exec ddcutil setvcp 10 70";
        "${modifier}+ctrl+8"        = "exec ddcutil setvcp 10 80";
        "${modifier}+ctrl+9"        = "exec ddcutil setvcp 10 90";
        "${modifier}+ctrl+0"        = "exec ddcutil setvcp 10 100";

        # Night mode / shader equivalents (hyprshade doesn't exist in sway, use gammastep)
        "${modifier}+ctrl+n"        = "exec gammastep -O 3000";
        "${modifier}+ctrl+m"        = "exec pkill gammastep";

        # Toggle waybar visibility
        "${modifier}+w"             = "exec pkill -SIGUSR1 waybar";

        # Monitor off
        "${modifier}+ctrl+x"        = "exec ddcutil setvcp d6 5";
      };
    };

    # Extra config lines not expressible in the attrset above
    extraConfig = ''
      # Move/resize with mouse (matches hyprland bindm)
      floating_modifier Mod4 normal

      # Picture-in-Picture: sticky float
      for_window [title="Picture-in-Picture"] sticky enable

      # Sway equivalent of hyprland's special:console / special:music
      # (use named scratchpads via marks as sway has only one scratchpad)
  #    for_window [app_id="^foot$"]     mark console, move scratchpad
  #    for_window [app_id="^audacious$"] mark music, move scratchpad

      # Focus wrapping
      focus_wrapping no

      # Font
      font pango:Roboto Mono Medium 10
    '';
  };
}
