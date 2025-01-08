{
  inputs = { nixpkgs.url = "github:nixos/nixpkgs"; };

  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in {
      devShell.x86_64-linux =
        pkgs.mkShell {
          name = "basic-flake";
          buildInputs = with pkgs; [
            php
            laravel
            bun
          ];
        };
       shellhook = '' '';
   };
}
