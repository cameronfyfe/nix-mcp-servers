{ pkgs, callPackage }:

rec {
  # reference servers
  mcp-server-filesystem = callPackage ./reference-servers/filesystem.nix { };

  # servers
  github-mcp-server = callPackage ./servers/github-mcp-server { };
  mcp-server-tmdb = callPackage ./servers/mcp-server-tmdb { };
}
