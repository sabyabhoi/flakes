{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShell = pkgs.mkShell {
          name = "php-laravel-flake";
          buildInputs = with pkgs; [
            bun
            laravel
            php
            php83Packages.composer
          ];
          shellHook = ''
            echo "php-laravel-flake initialized"
          '';
        };
      }
    );
}
