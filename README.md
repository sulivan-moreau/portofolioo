# Portofolioo

Portfolio statique pensé pour un VPS avec Coolify.

## Structure

- `front/` : site statique du portfolio
- `front/projects/` : pages détaillées des projets

## Lancer en local

```bash
just front
```

## Lancer avec Docker

```bash
just up
```

## Déploiement Coolify

- Déployer un seul service `front` avec le Dockerfile du dossier `front/`
- Exposer le conteneur sur le port `80`
- Garder le dépôt simple et statique

## Bonnes pratiques appliquées

- `just` centralise les commandes utiles
- `docker compose` permet le lancement local d’un service statique
- le front est statique, donc simple à servir et à maintenir