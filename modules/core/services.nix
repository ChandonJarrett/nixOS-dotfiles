{ pkgs, ... }:
{
	services = {
		fstrim.enable = true;
		udisks2.enable = true;
		printing.enable = true;

		upower.enable = true;
		power-profiles-daemon.enable = true;

		logind.settings.Login = {
			HandlePowerKey = "ignore";
		};

		# GNOME Services
		gvfs.enable = true;
		dbus.enable = true;

		gnome = {
			tinysparql.enable = true;
			gnome-keyring.enable = true;
		};

		# Might Need For Services Outside GNOME
		dbus.packages = with pkgs; [
			gcr
			gnome-settings-daemon
		];
		
		# Display Manager
		greetd = {
			enable = true;
			settings = {
				default_session = {
					command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd start-hyprland";
					user = "greeter";
				};
			};
		};

		tailscale = {
			enable = true;
			extraUpFlags = [ "--ssh" ];
		};
	};

	virtualisation.docker = {
		enable = true;
		enableOnBoot = true;
	};

	security.pam.services.greetd.enableGnomeKeyring = true;
}
