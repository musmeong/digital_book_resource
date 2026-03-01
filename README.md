# 📚 Digital Book Resource

> A personal repository for developing and serving digital learning books, containerized with Docker and served via Nginx.

---

## 📖 Overview

This repository contains the source files, build scripts, and deployment configuration for a collection of digital learning books. Books are built using shell scripts and served as static content through an Nginx web server inside a Docker container.

---

## 📁 Repository Structure

```
digital_book_resource/
├── loremipsum/             # Sample/placeholder book project
├── newbookname/            # Book project template
├── portfoliooptimization/  # Book: Portfolio Optimization
├── testbook/               # Test/development book
├── build_books.sh          # Script to build all book projects
├── deploy.sh               # Deployment script
├── Dockerfile              # Docker image definition
├── docker-compose.yml      # Docker Compose configuration
├── nginx.conf              # Nginx web server configuration
└── .gitignore
```

---

## 🚀 Getting Started

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/) (v20+)
- [Docker Compose](https://docs.docker.com/compose/install/) (v2+)

### 1. Clone the Repository

```bash
git clone https://github.com/musmeong/digital_book_resource.git
cd digital_book_resource
```

### 2. Build the Books

```bash
bash build_books.sh
```

### 3. Run with Docker Compose

```bash
docker-compose up --build
```

The books will be served locally at **http://localhost** (or whichever port is configured in `docker-compose.yml`).

---

## 🛠️ Deployment

To deploy to a production server, run:

```bash
bash deploy.sh
```

Make sure your environment variables and server configuration are set before running the deploy script.

---

## 📦 Docker

To build and run the Docker image manually:

```bash
# Build the image
docker build -t digital_book_resource .

# Run the container
docker run -p 80:80 digital_book_resource
```

---

## 📝 Adding a New Book

1. Create a new folder in the root directory with your book's name.
2. Add your book source files inside the folder.
3. Update `build_books.sh` to include the new book in the build pipeline.
4. Rebuild the project using `docker-compose up --build`.

---

## 🤝 Contributing

This is a personal resource repository. Feel free to fork and adapt it for your own digital book projects.

---

## 📄 License

This project is for personal use. Please contact the author for any usage inquiries.
