# README

## Runing on Docker

- Install Docker and Docker Compose
- Create a `.env` file in the root of the project with the following content:
```
THERIGHTDEV_DATABASE_PASSWORD=<PASSWORD>
```
- Replace `<PASSWORD>` with the password you want to use for the database
- Run `docker-compose up --build`

## Runing tests
- Run `docker exec -it therightdev-web-1 rspec`