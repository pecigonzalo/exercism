with import <nixpkgs> {};

mkShell {
  buildInputs = [
    yarn
    nodejs
  ];
}
