{ ... }:
{
    home.sessionVariables = {
        NIXOS_OZONE_WL = 1;
        GDK_BACKEND = "wayland";
        QT_QPA_PLATFORM = "wayland";
        SDL_VIDEODRIVER = "wayland";
        CLUTTER_BACKEND = "wayland";
        MOZ_ENABLE_WAYLAND = 1;
        ANKI_WAYLAND = 1;
        DISABLE_QT5_COMPAT = 0;
        QT_AUTO_SCREEN_SCALE_FACTOR = 1;
        QT_WAYLAND_DISABLE_WINDOWDECORATION = 1;
        QT_STYLE_OVERRIDE = "kvantum";
        WLR_BACKEND = "vulkan";
        WLR_RENDERER = "vulkan";
        WLR_DRM_NO_ATOMIC = 1;
        WLR_NO_HARDWARE_CURSORS = 1;
        __GL_GSYNC_ALLOWED = 0;
        __GL_VRR_ALLOWED = 0;
        XDG_CURRENT_DESKTOP = "Hyprland";
        XDG_SESSION_TYPE = "wayland";
        XDG_SESSION_DESKTOP = "Hyprland";
        SSH_AUTH_SOCK = "/run/user/1000/ssh-agent";
        DIRENV_LOG_FORMAT = "";
        GRIMBLAST_HIDE_CURSOR = 1;
        ELECTRON_OZONE_PLATFORM_HINT = "auto";
        TERMINAL = "kitty";
        EDITOR = "nvim";
    };
}