CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int
);

CREATE TABLE "post" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar,
  "description_id" int,
  "text" text,
  "author_id" int
);

CREATE TABLE "categorias_id" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "comentarios" (
  "id" SERIAL PRIMARY KEY,
  "text" text,
  "user_id" int,
  "post_id" int
);

CREATE TABLE "author" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "comentarios" ADD FOREIGN KEY ("post_id") REFERENCES "post" ("id");

ALTER TABLE "post" ADD FOREIGN KEY ("description_id") REFERENCES "categorias_id" ("id");

ALTER TABLE "comentarios" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "post" ADD FOREIGN KEY ("author_id") REFERENCES "author" ("id");

insert into users (name, email, password, age) values ('Eloy', 'eloy123@gmail.com', '12345', 19 ),('Juan', 'juan123@gmail.com', '54321', 20 );

insert into categorias_id (name) values ('Humor'),('Informativo');

insert into author (name) values ('Jose Lopez'),('Carlos Alcaraz');

insert into post (title, description_id, text, author_id) values ('Top 30 chistes', 1, 'asdasdasdasdasd', 2),('Ultmas noticias ucrania', 2, 'fcfcfc',1);

insert into comentarios (text, user_id, post_id) values ('Muy graciosos', 1, 1), ('que triste que pasen estas cosas', 2, 2);

