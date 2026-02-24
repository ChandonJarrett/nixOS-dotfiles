{ pkgs, username, ... }:
{
	users.users.${username} = {
		isNormalUser = true;
		description = username;
		extraGroups = [ "wheel" "networkmanager" "docker" ];
		shell = pkgs.fish;
	};

	nix.settings.allowed-users = [ username ];
}
