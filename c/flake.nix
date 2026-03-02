{
  description = "Simple C project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        packages.default = pkgs.stdenv.mkDerivation {
          pname = "myproject";
          version = "0.1.0";
          src = ./.;

          nativeBuildInputs = [ pkgs.gcc pkgs.gnumake ];
        };

        devShells.default = pkgs.mkShell {
          buildInputs = [ pkgs.gcc pkgs.gnumake pkgs.gdb ];
        };
      });
}
