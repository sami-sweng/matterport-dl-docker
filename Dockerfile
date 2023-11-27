FROM python:3.12-alpine

LABEL org.opencontainers.image.source https://github.com/josetorronteras/matterport-dl-docker

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY graph_posts/ ./graph_posts/

COPY matterport-dl.py .

EXPOSE 8080

ENTRYPOINT [ "python3", "matterport-dl.py" ]