{ ... }:
{
    wayland.windowManager.hyprland.settings.exec-once = [
        "dbus-update-activation-environment --all --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"

        # Dank Material Shell
        "systemctl --user start hyprland-session.target"
        "systemctl --user add-wants hyprland-session.target dms"
        "bash -c \"wl-paste --watch cliphist store &\""
        
        "[workspace 1 silent] firefox"
        "[workspace 2 silent] kitty"
    ];
}