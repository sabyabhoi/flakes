{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        pythonPackages = pkgs.python311Packages;
      in
      {
        devShells.default = pkgs.mkShell {
          name = "python-devel";
          venvDir = "venv";
          buildInputs = with pythonPackages; [
            pandas
            numpy
            scipy
            jupyter
            icecream
            venvShellHook
            seaborn
            pyarrow
          ];
        };
      }
    );
}
