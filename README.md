# n8n - Render (template)
Ce dépôt contient un **Dockerfile minimal** et un `.env.example` pour déployer n8n sur Render.

## Contenu
- `Dockerfile` : image officielle n8n
- `.env.example` : exemples de variables d'environnement (NE PAS COMMITTER DE SECRETS)
- `README.md` : ce fichier

## Déploiement rapide (débutant)
### Option A — Utiliser le template officiel Render (recommandé pour débutants)
1. Ouvre la page du template Render (render-examples/n8n) sur GitHub.
2. Clique sur **Use this template → Create a new repository**.
3. Dans le tableau de bord Render : **New → Blueprint**, connecte ton repo et clique sur **Deploy Blueprint**.
4. Render va créer le web service n8n et la base Postgres pour toi.
5. Dans la page du web service Render :
   - Ajoute/édite les variables d'environnement (WEBHOOK_URL, N8N_ENCRYPTION_KEY, N8N_BASIC_AUTH_*).
   - Vérifie l'URL `https://<ton-service>.onrender.com/`.

### Option B — Créer ton repo manuellement et déployer
1. Crée un repo GitHub et pousse ces fichiers (`Dockerfile`, `.env.example`, `README.md`).
2. Dans Render : **New → Web Service** → choisis **Docker** → connecte ton repo.
3. Déploie et configure les variables d'environnement dans la section Environment.

## Sécurité & persistance
- **N8N_ENCRYPTION_KEY** : indispensable pour chiffrer les credentials ; garde la même clé si tu restores/updates.
- **N8N_BASIC_AUTH_ACTIVE** + `N8N_BASIC_AUTH_USER`/`N8N_BASIC_AUTH_PASSWORD` : protège l'accès UI.
- Par défaut, Render a un **filesystem éphémère** sur l'offre gratuite — utilise Render Postgres (Blueprint) ou un disque persistant (payant) pour sauvegarder les workflows.

## Liens utiles
- Render guide (déployer n8n) — voir la documentation Render pour le Blueprint.
- n8n docs (variables d'environnement, encryption key, webhook URL).

---
Bonne chance — modifie le `.env.example` avec tes valeurs puis déploie ;)
