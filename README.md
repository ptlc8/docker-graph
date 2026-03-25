# Docker Graph

Visualisation automatique de l'infrastructure Docker en Mermaid. Chaque réseau Docker devient une boîte, les conteneurs sont colorés par type.

## Démarrage

```bash
docker-compose up -d
open http://localhost:8000
```

## Fonctionnement

- **docker-gen** scrute Docker et génère `web/graph.mmd`
- **nginx** sert la page sur http://localhost:8000
- **Mermaid.js** rend le diagramme dans le navigateur
- Le graphe se met à jour automatiquement (mode `-watch`)

## Structure

```
.
├── docker-compose.yml
├── templates/mermaid.tmpl
├── web/index.html
├── nginx.conf
└── README.md
```

## Couleurs

- 🔵 Database (Postgres, MySQL, Mongo...)
- 🟡 Cache (Redis)
- 🟣 Proxy (Nginx, Traefik)
- 🟢 API / Backend
- 🔴 Web / Frontend
- ⚪ Service générique
