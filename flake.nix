{
  description = "A collection of project templates";

  outputs =
    { ... }:
    {
      templates = {
        ocaml = {
          path = ./ocaml;
        };
        go = {
          path = ./go-api;
        };
        rust = {
          path = ./rust;
        };
      };
    };
}
