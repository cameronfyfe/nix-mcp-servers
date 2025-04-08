{ pkgs, callPackage }:

rec {
  # reference servers
  mcp-server-filesystem = callPackage ./reference-servers/filesystem.nix { };

  # servers
  github-mcp-server = callPackage ./servers/github-mcp-server { };
  mcp-neo4j-cypher = callPackage ./servers/mcp-neo4j-cypher { };
  mcp-server-tmdb = callPackage ./servers/mcp-server-tmdb { };
}
