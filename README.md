# ðŸ“š Digital Book Resource

A personal repository for developing and self-hosting interactive learning books built with [Quarto](https://quarto.org/), served via Nginx inside Docker.

## ðŸ“ Project Structure

```
digital_book_resource/
â”œâ”€â”€ loremipsum/             # Sample/template book
â”œâ”€â”€ newbookname/            # New book scaffold
â”œâ”€â”€ portfoliooptimization/  # Book: Portfolio Optimization
â”œâ”€â”€ testbook/               # Sandbox/test book
â”œâ”€â”€ build_books.sh          # Auto-builds all Quarto books
â”œâ”€â”€ deploy.sh               # Pull latest & redeploy via Docker
â”œâ”€â”€ Dockerfile              # Multi-stage build (Quarto â†’ Nginx)
â”œâ”€â”€ docker-compose.yml      # Container config, serves on port 8081
â”œâ”€â”€ nginx.conf              # Nginx static file server config
â””â”€â”€ .gitignore
```

## ðŸ› ï¸ Tech Stack

- **[Quarto](https://quarto.org/)** â€” Book authoring framework
- **Docker** â€” Containerized build & deployment
- **Nginx** â€” Serves rendered books as static files
- **Shell scripts** â€” Automate build and deploy workflows

## ðŸš€ Getting Started

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/) & Docker Compose
- (Optional) [Quarto CLI](https://quarto.org/docs/get-started/) for local development

### Run Locally

```bash
git clone https://github.com/musmeong/digital_book_resource.git
cd digital_book_resource
docker compose up -d --build
```

Books will be available at: **http://localhost:8081/book/**

### Adding a New Book

1. Create a new folder with your book name
2. Add a `_quarto.yml` config file inside it
3. Run `build_books.sh` â€” it auto-detects and builds all books with a `_quarto.yml`

```bash
bash build_books.sh
```

## ðŸ”„ Deployment

To pull the latest changes and redeploy:

```bash
bash deploy.sh
```

This runs `git pull` and rebuilds the Docker container automatically.

## ðŸ“– Books

| Book | Description |
|------|-------------|
| `portfoliooptimization` | Learning material on portfolio optimization |
| `loremipsum` | Template / placeholder book |
| `newbookname` | New book in progress |
| `testbook` | Sandbox for testing Quarto features |

## ðŸ‘¤ Author

**Muhamad Mustain** â€” [@musmeong](https://github.com/musmeong)
