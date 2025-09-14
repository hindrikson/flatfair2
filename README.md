# README

- Continue from: https://www.youtube.com/watch?v=n0TPEsKE9v0

- [ ] Add a migration to include assignee to todos.

- Podman postgres container
    To run a postgres image:

    podman pull docker.io/postgres:15

    set the password:
    xport DATABASE_PASSWORD=1234

    podman run -d \
      --name postgres-dev \
      -e POSTGRES_PASSWORD=1234 \
      -e POSTGRES_USER=postgres \
      -e POSTGRES_DB=flatfair_development \
      -p 5432:5432 \
      -v ./postgres_data:/var/lib/postgresql/data:Z \
      docker.io/postgres:15  
 
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
