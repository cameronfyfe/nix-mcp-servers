# nix-mcp-servers

This is a repo to hold nix packages for various MCP servers.

## Running MCP servers

MCP servers can be run directly from this flake.

Run `github-mcp-server` in stdio mode:
```bash
nix run github:cameronfyfe/nix-mcp-server#github-mcp-server -- stdio
```

## Installing MCP servers

MCP servers can be installed on a NixOS system or with [home-manager](https://github.com/nix-community/home-manager) by referencing this flake.

Add the following to your flake.nix:

```
inputs.nix-mcp-servers.url = "github:cameronfyfe/nix-mcp-servers";
```

And add any mcp server packages to your `environment.systemPackages` or `home.packages`:

```
[
  ...
  inputs.nix-mcp-servers.packages.${system}.github-mcp-server
  ...
]
```

## MCP Servers List

```present scripts/list-pkgs.sh
github-mcp-server
mcp-neo4j-cypher
mcp-server-filesystem
mcp-server-tmdb
```

## Contributing

Contributions of additional MCP servers are welcome.

## Related Projects

- [github.com/aloshy-ai/nix-mcp-servers](https://github.com/aloshy-ai/nix-mcp-servers)
- [github.com/natsukium/mcp-servers-nix](https://github.com/natsukium/mcp-servers-nix)
