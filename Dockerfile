FROM python:alpine

EXPOSE 3000

RUN mkdir -p /srv/www

WORKDIR /src/www

COPY public .

CMD ["python", "-m", "http.server", "3000"]