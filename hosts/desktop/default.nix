{ host, ... }:

{
	networking.hostName = host;

	imports = [
		./hardware-configuration.nix
		./../../modules/core
	];
}
