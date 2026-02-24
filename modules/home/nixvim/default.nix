{ inputs, pkgs, ... }:
{
    imports = [
        inputs.nixvim.homeModules.nixvim
    ];

	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		viAlias = true;
		vimAlias = true;

		globals.mapleader = " ";

		opts = {
			number = true;
			relativenumber = true;
			shiftwidth = 2;
			tabstop = 2;
			expandtab = true;
			smartindent = true;
			signcolumn = "yes";
			termguicolors = true;
			updatetime = 250;
			mouse = "a";
			splitbelow = true;
			splitright = true;
		};

        /*
		plugins = {
			lsp.enable = true;
			lsp.servers = {
				nixd.enable = true;
				rust_analyzer.enable = true;
				gopls.enable = true;
				lua_ls.enable = true;
			};

			treesitter.enable = true;
			telescope.enable = true;
			which-key.enable = true;
			lualine.enable = true;
			nvim-autopairs.enable = true;
		};

		extraPackages = with pkgs; [
			ripgrep
			fd
			nixd
			nixfmt-rfc-style
			gopls
			lua-language-server
			rust-analyzer
		];

		keymaps = [
			{
				mode = "n";
				key = "<leader>w";
				action = "<cmd>w<CR>";
				options.silent = true;
			}
			{
				mode = "n";
				key = "<leader>q";
				action = "<cmd>q<CR>";
				options.silent = true;
			}
			{
				mode = "n";
				key = "<leader>ff";
				action = "<cmd>Telescope find_files<CR>";
				options.silent = true;
			}
			{
				mode = "n";
				key = "<leader>fg";
				action = "<cmd>Telescope live_grep<CR>";
				options.silent = true;
			}
		];*/
	};
}
