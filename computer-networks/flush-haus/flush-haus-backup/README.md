# Flush Haus (game copy)

A local copy of the real-time WebSocket poker game — the practical component of the
TCP study. The game is **server-authoritative**, so you need **both** parts running:

- `flush-haus-ui/` — the web client (React + Vite)
- `flush-haus-api/` — the game server (Bun + Elysia)

Canonical repositories (kept up to date there):
- UI: https://github.com/Flush-Haus/flush-haus-ui
- API: https://github.com/Flush-Haus/flush-haus-api

## Run

```bash
# 1) server (Bun) — listens on :8080
cd flush-haus-api && bun install && bun run src/index.ts

# 2) client (Node) — dev server on :5173
cd flush-haus-ui && npm install && npm run dev
```

Open <http://localhost:5173>, keep the WebSocket URL as `ws://localhost:8080/ws`,
and click **Conectar**. The game needs the server running — without it you only get
`flush-haus-ui/?demo`, a static table for looks. See `flush-haus-ui/README.md` for
the full guide.
