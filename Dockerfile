FROM ghcr.io/quarto-dev/quarto AS builder
WORKDIR /books
COPY . .
RUN quarto render portfoliooptimization/

FROM nginx:alpine
COPY --from=builder /books/_site /usr/share/nginx/html/book
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
