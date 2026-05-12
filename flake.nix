{
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		flake-utils.url = "github:numtide/flake-utils";
	};

	outputs = { self, nixpkgs, flake-utils, ... }:
		flake-utils.lib.eachDefaultSystem (system: 
		let 
			pkgs = import nixpkgs {
				inherit system;
			};
		in 
		{
			devShells.default = with pkgs; mkShell {
				buildInputs = [
					eza
					ripgrep
					fd
					bat
					sops
					fluxcd
					k3d
					kubectl
					cilium-cli
				];

				shellHook = ''
					alias grep=rg
					alias ls=eza
					alias find=fd
					alias cat=bat
				'';
			};
		}
	);
}
