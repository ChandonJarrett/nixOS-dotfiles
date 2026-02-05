{ inputs, pkgs, ... }:
{
    imports = [
        inputs.stylix.homeModules.stylix
    ];

    stylix = {
        enable = true;

        autoEnable = true;
        targets = {
            starship.enable = false;
        };

        polarity = "dark";

        # image = ; # wallpaper

        /* 
        base colors:
            black: #222023
            white: #F7F5F5
            gray: #545255
            
            orange: #F18C58
            red: #C91931
            purple: #876FBE
        */

        base16Scheme = {
            base00 = "222023"; # background #222023
            base01 = "343135"; # lighter bg #343135
            base02 = "3E3B40"; # selecrion bg #3E3B40
            base03 = "927777"; # comments #676468
            base04 = "AD9999"; #AD9999
            base05 = "F7F5F5"; # foreground #F7F5F5
            base06 = "67626A"; #67626A
            base07 = "726C75"; #726C75

            base08 = "9580C6"; # red #9580C6
            base09 = "EE6F2F"; # orange #EE6F2F
            base0A = "F18C58"; # yellow #F18C58
            base0B = "B8ABD9"; # green #B8ABD9
            base0C = "7256B3"; # cyan #7256B3
            base0D = "9580C6"; # blue #E13D5E
            base0E = "E6607B"; # purple #E6607B
            base0F = "BD490F"; # brown #BD490F
        };



        opacity = {
            desktop = 0.75;
            popups = 0.70;
            applications = 0.70;
            terminal = 0.65;
        };

        fonts = {
            serif = {
                package = pkgs.noto-fonts;
                name = "Noto Serif";
            };

            sansSerif = {
                package = pkgs.noto-fonts;
                name = "Noto Sans";
            };

            monospace = {
                package = pkgs.nerd-fonts.fira-code;
                name = "FiraCode Nerd Font Mono";
            };

            sizes = {
                desktop = 10;
                popups = 10;
                applications = 12;
                terminal = 12;
            };
        };

        icons = {
            enable = true;
            package = pkgs.papirus-icon-theme;
            dark = "Papirus-Dark";
        };

        cursor = {
            package = pkgs.bibata-cursors;
            name = "Bibata-Modern-Ice";
            size = 18;
        };
    };
}