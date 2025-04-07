{ pkgs, callPackage }:

{
  github-mcp-server = callPackage ./github-mcp-server { };
  mcp-server-tmdb = callPackage ./mcp-server-tmdb { };
}
