FROM python:2.7

EXPOSE 80

RUN mkdir -p /app

WORKDIR /app

COPY . /app

RUN chmod +x /app/*.sh

CMD ["/app/run.sh"]
