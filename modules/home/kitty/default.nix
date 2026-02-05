{ host, ... }:
{
	programs.kitty = {
		enable = true;

		settings = {
			font_family = "FiraCode Nerd Font Mono";
      		font_size = 14.0;
			confirm_os_window_close = 0;
			scrollback_lines = 10000;
			enable_audio_bell = false;
			mouse_hide_wait = 60;
		};

		keybindings = {
			"alt+1" = "goto_tab 1";
			"alt+2" = "goto_tab 2";
			"alt+3" = "goto_tab 3";
			"alt+4" = "goto_tab 4";
		};
	};
}
