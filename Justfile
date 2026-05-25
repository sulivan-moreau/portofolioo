# Justfile pour le projet portofolioo

set shell := ["zsh", "-cu"]

# Variables
COMPOSE := "docker compose"
PROJECT_ROOT := justfile_dir()

# Affiche l'aide
help:
    @just --list

# Installe les dépendances
install:
    @echo "Aucune dépendance à installer pour le front statique."

# Lance le portfolio statique avec docker compose
up:
    {{COMPOSE}} up -d --build

# Arrête tous les services
down:
    {{COMPOSE}} down

# Lance le frontend
front:
    python3 -m http.server 3000 --directory front

# Formate le code avec black
format:
    @echo "Pas de formatage Python dans ce mode front-only."

# Vérifie le code avec ruff et mypy
lint:
    @echo "Pas de lint Python dans ce mode front-only."

# Exécute les tests
test:
    @echo "Pas de tests Python dans ce mode front-only."

# Nettoit les fichiers temporaires
clean:
    find front -name ".DS_Store" -delete

# Lance tout
all: install
    @echo "🚀 Lancement du portfolio..."
    just up
    @echo "✅ Portfolio lancé!"
    @echo "🎨 Frontend: http://localhost:3000"

# Affiche les logs
logs:
    {{COMPOSE}} logs -f

# Réinitialise le projet
reset: clean
    {{COMPOSE}} down -v
    rm -rf .venv node_modules
    just install
