{ lib, inputs, username, host, ... }:

let
	hostHomeModule = ../home/hosts + "/${host}.nix";
in
{
	home-manager = {
		useGlobalPkgs = false;
		useUserPackages = true;
		extraSpecialArgs = { inherit inputs username host; };
			sharedModules = [
				{ nixpkgs.config.allowUnfree = true; }
			];

		users.${username} = {
			imports = [ ../home ] ++ lib.optional (builtins.pathExists hostHomeModule) hostHomeModule;

			home = {
				username = username;
				homeDirectory = "/home/${username}";
				stateVersion = "25.11";
			};

			programs.home-manager.enable = true;
		};

		backupFileExtension = "hm-backup";
	};
}
