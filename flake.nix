{
  description = "A collection of project templates";

  outputs =
    { ... }:
    {
      templates = {
        php-laravel = {
          path = ./php-laravel;
        };
        elixir = {
          path = ./elixir;
        };
        python = {
          path = ./python;
        };
        ocaml = {
          path = ./ocaml;
        };
        go = {
          path = ./go-api;
        };
        rust = {
          path = ./rust;
        };
        java = {
          path = ./java;
        };
        node = {
          path = ./node;
        };
      };
    };
}
