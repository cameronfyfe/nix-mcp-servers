{ pkgs, callPackage }:

{
  # reference servers (https://github.com/modelcontextprotocol/servers)
  mcp-server-brave-search = callPackage ./reference-servers/brave-search.nix { };
  mcp-server-everart = callPackage ./reference-servers/everart.nix { };
  mcp-server-everything = callPackage ./reference-servers/everything.nix { };
  mcp-server-filesystem = callPackage ./reference-servers/filesystem.nix { };
  mcp-server-fetch = callPackage ./reference-servers/fetch.nix { };
  mcp-server-gdrive = callPackage ./reference-servers/gdrive.nix { };
  mcp-server-git = callPackage ./reference-servers/git.nix { };
  mcp-server-github = callPackage ./reference-servers/github.nix { };
  mcp-server-gitlab = callPackage ./reference-servers/gitlab.nix { };
  mcp-server-google-maps = callPackage ./reference-servers/google-maps.nix { };
  mcp-server-memory = callPackage ./reference-servers/memory.nix { };
  mcp-server-postgres = callPackage ./reference-servers/postgres.nix { };
  mcp-server-puppeteer = callPackage ./reference-servers/puppeteer.nix { };
  mcp-server-sentry = callPackage ./reference-servers/sentry.nix { };
  mcp-server-sequentialthinking = callPackage ./reference-servers/sequentialthinking.nix { };
  mcp-server-slack = callPackage ./reference-servers/slack.nix { };
  mcp-server-sqlite = callPackage ./reference-servers/sqlite.nix { };
  mcp-server-time = callPackage ./reference-servers/time.nix { };

  # servers
  github-mcp-server = callPackage ./servers/github-mcp-server { };
  mcp-neo4j-cypher = callPackage ./servers/mcp-neo4j-cypher { };
  mcp-server-tmdb = callPackage ./servers/mcp-server-tmdb { };
  mcp-server-playwright = callPackage ./servers/mcp-server-playwright { };
}
