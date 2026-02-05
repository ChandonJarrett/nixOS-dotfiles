{ pkgs, inputs, username, host, ... }:

let
	#themeDef = import ./theme.nix;

	#themeMode = "dark";

	#theme = themeDef.${themeMode};
in
{
	home-manager = {
		useGlobalPkgs = true;
		useUserPackages = true;
		#extraSpecialArgs = { inherit inputs username host theme themeMode; };
		extraSpecialArgs = { inherit inputs username host; };

		users.${username} = {
			imports = 
				(
					if (host == "desktop") then
						[ ./../home/default-desktop.nix ]
					else
						[ ./../home ]
				)
				++ [
					
				];

			home.username = username;
			home.homeDirectory = "/home/${username}";
			home.stateVersion = "25.11";
			programs.home-manager.enable = true;
		};

		backupFileExtension = "hm-backup";
	};

	users.users.${username} = {
		isNormalUser = true;
		description = username;
		extraGroups = [ "wheel" "networkmanager" "docker" ];
		shell = pkgs.fish;
	};

	nix.settings.allowed-users = [ username ];
}
