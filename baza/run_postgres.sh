docker run --rm   --name pg-docker -e POSTGRES_PASSWORD=docker -e POSTGRES_USER=ml -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data  postgres
