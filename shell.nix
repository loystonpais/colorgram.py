{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    (python3.withPackages (pythonPkgs: with pythonPkgs; [
      pillow
    ]))
  ];
}
