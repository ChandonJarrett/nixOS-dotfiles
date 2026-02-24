{ ... }:
{
	wayland.windowManager.hyprland.settings = {
		"$mainMod" = "SUPER";		

		binds = {
			movefocus_cycles_fullscreen = true;
		};

		bind = [
			# "$mainMod, M, exec, show-keybinds"

			"$mainMod, T, exec, kitty"
			"$mainMod, W, exec, firefox"
			"$mainMod, Q, killactive"
			"$mainMod, F, fullscreen, 1"
			"$mainMod, Space, togglefloating"

			# Tools
			#"$mainMod, S, exec, screenshot --copy"
			#"$mainMod SHIFT, S, exec, screenshot --swappy"
			#"$mainMod, C, exec, hyprpicker -a"

			# Dank Material Shell
			"$mainMod, A, exec, dms ipc call spotlight toggle"
			"$mainMod, TAB, exec, dms ipc call hypr toggleOverview"
			"$mainMod, V, exec, dms ipc call clipboard toggle"
			"$mainMod, ESC, exec, dms ipc call processlist focusOrToggle"
			"$mainMod, L, exec, dms ipc call lock lock"
			"$mainMod, S, exec, dms ipc call screenshot"
			"$mainMod SHIFT, S, exec, dms ipc call screenshot --no-file"
			

			# Workspaces
			"$mainMod, 1, workspace, 1"
			"$mainMod, 2, workspace, 2"
			"$mainMod, 3, workspace, 3"
			"$mainMod, 4, workspace, 4"
			"$mainMod, 5, workspace, 5"
			"$mainMod, 6, workspace, 6"
			"$mainMod, 7, workspace, 7"
			"$mainMod, 8, workspace, 8"
			"$mainMod, 9, workspace, 9"
			"$mainMod, 0, workspace, 10"

			"$mainMod SHIFT, 1, movetoworkspacesilent, 1"
			"$mainMod SHIFT, 2, movetoworkspacesilent, 2"
			"$mainMod SHIFT, 3, movetoworkspacesilent, 3"
			"$mainMod SHIFT, 4, movetoworkspacesilent, 4"
			"$mainMod SHIFT, 5, movetoworkspacesilent, 5"
			"$mainMod SHIFT, 6, movetoworkspacesilent, 6"
			"$mainMod SHIFT, 7, movetoworkspacesilent, 7"
			"$mainMod SHIFT, 8, movetoworkspacesilent, 8"
			"$mainMod SHIFT, 9, movetoworkspacesilent, 9"
			"$mainMod SHIFT, 0, movetoworkspacesilent, 10"
		];

		bindm = [
			"$mainMod, mouse:272, movewindow"
			"$mainMod, mouse:273, resizewindow"
		];

		binde = [
			", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+"
			", XF86AudioLowerVolume, exec, wpctl set-volume -l 0.0 @DEFAULT_AUDIO_SINK@ 5%-"

			", XF86MonBrightnessUp, exec, brightnessctl set 5%+"
			", XF86MonBrightnessDown, exec, brightnessctl set 5%-"
		];
		bindl = [
			", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
		];
	};
}
