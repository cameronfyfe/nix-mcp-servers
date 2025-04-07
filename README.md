# nix-mcp-servers

This is a repo to hold nix packages for various MCP servers.

# Running MCP servers

MCP servers can be run directly from this flake.

Run `github-mcp-server` in stdio mode:
```bash
nix run github:cameronfyfe/nix-mcp-server#github-mcp-server -- stdio
```

# Installing MCP servers

MCP servers can be installed on a NixOS system or with [home-manager](https://github.com/nix-community/home-manager) by referencing this flake.

    TODO

# MCP Servers List

```present scripts/list-pkgs.sh
github-mcp-server
mcp-server-filesystem
mcp-server-tmdb
```
