{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  outputs = { self, nixpkgs }: 
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in {
      packages.x86_64-linux.default = pkgs.bun;
      devShells.x86_64-linux.default = pkgs.mkShell {
        buildInputs = [ pkgs.bun ];
      };
    };
}