FROM lipanski/docker-static-website:latest

EXPOSE 3000

# Copy your static files
COPY public .

CMD ["/busybox", "httpd", "-f", "-v", "-p", "3000", "-c", "httpd.conf"]
