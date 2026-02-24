{ pkgs, ... }:
{
	nix = {
		settings = {
			auto-optimise-store = true;
			experimental-features = [
				"nix-command"
				"flakes"
			];
			download-buffer-size = 524288000;
		};
	};

	environment.systemPackages = with pkgs; [
		wget
		vim
		git
		zip
		unzip
	];

	time.timeZone = "America/New_York";
	i18n.defaultLocale = "en_US.UTF-8";
	nixpkgs.config.allowUnfree = true;
	system.stateVersion = "25.11";

	fonts = {
		packages = with pkgs; [
			nerd-fonts.fira-code
			noto-fonts
		];

		fontconfig = {
			enable = true;

			defaultFonts = {
				monospace = [ "FiraCode Nerd Font Mono" ];
				sansSerif = [ "Noto Sans" ];
    			serif = [ "Noto Serif" ];
			};

			useEmbeddedBitmaps = true;
		};
	};
}
