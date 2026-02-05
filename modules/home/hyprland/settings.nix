#{ theme, ... }:
{ pkgs, ... }:
{
    wayland.windowManager.hyprland.settings = {
        general = {
            layout = "dwindle";
            gaps_in = 5;
            gaps_out = 5;
            border_size = 1;
            #"col.active_border" = "rgb(${theme.accent})";
            #"col.inactive_border" = "0x00000000";
            # no_border_on_floating = false;
        };

        monitor = [
            "eDP-1,1920x1200@59.99900,0x0,1.25"
        ];

        input = {
            kb_layout = "us";
            numlock_by_default = true;
            repeat_delay = 300;
            follow_mouse = 1;
            float_switch_override_focus = 1;
            focus_on_close = 1;
            mouse_refocus = 0;
            sensitivity = 0;
            touchpad = {
                natural_scroll = true;
            };
        };

        misc = {
            disable_hyprland_logo = true;
            disable_splash_rendering = true;
            always_follow_on_dnd = true;
            layers_hog_keyboard_focus = true;
            animate_manual_resizes = true;
            enable_swallow = true;
            focus_on_activate = true;
            middle_click_paste = false;
        };

        dwindle = {
            force_split = 2;
            special_scale_factor = 1.0;
            split_width_multiplier = 1.0;
            use_active_for_splits = true;
            pseudotile = "yes";
            preserve_split = "yes";
            smart_split = "yes";
        };

        master = {
            new_status = "master";
            special_scale_factor = 1;
        };

        decoration = {
            rounding = 12;

            blur = {
                enabled = true;
                size = 3;
                passes = 2;
                brightness = 1;
                contrast = 1.4;
                ignore_opacity = true;
                noise = 0.01;
                new_optimizations = true;
                xray = true;
            };

            shadow = {
                enabled = true;
                ignore_window = true;
                offset = "0 2";
                range = 20;
                render_power = 3;
            };
        };

        animations = {
            enabled = true;

            bezier = [
                # slightly springy / fluid curves
                "fluent_decel, 0, 0.2, 0.4, 1"
                "easeOutCirc, 0, 0.55, 0.45, 1"
                "easeOutCubic, 0.33, 1, 0.68, 1"
                "bounce_small, 0, 0.6, 0.18, 1"
                "fade_curve, 0, 0.55, 0.45, 1"
            ];

            animation = [
                # name, enable, speed, curve, style
                "windowsIn,     1, 6, easeOutCubic, popin 40%"
                "windowsOut,    1, 6, easeOutCubic, popin 40%"
                "windowsMove,   1, 2, fluent_decel, slide"

                "fadeIn,        1, 3, fade_curve"
                "fadeOut,       1, 3, fade_curve"
                # "fadeSwitch     1, 2, easeOutCirc"
                "fadeShadow,    1, 10, easeOutCirc"
                # "fadeDim        1, 4, fluent_decel"
                "workspaces,    1, 5, easeOutCirc, slide"
            ];
        };

        xwayland = {
            force_zero_scaling = true;
        };
    };
}
