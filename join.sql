CREATE TABLE "users"(
    id SERIAL PRIMARY KEY,
    user_name VARCHAR NOT NULL
)

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT not NULL,
    user_id INTEGER REFERENCES "users"(id)
)

ALTER TABLE post 
alter column user_id

INSERT INTO "users" (user_name) VALUES
('akash'),
('batah'),
('sagor'),
('nodi')

INSERT INTO post(title,user_id)VALUES
('Enjoying a sunny day with Akash',2),
('Batach just shared an amazing rechip',1),
('Explering adventures with sagor',4),
('Nodi wisdom always leves me inspird',4)

DELETE FROM "users"
WHERE id = 4;

DROP TABLE post

DROP TABLE "users"

SELECT * FROM post;

SELECT * FROM "users";

SELECT title, user_name FROM post
JOIN "users" on post.user_id = "users".id; 

INSERT INTO post (id, title, user_id) VALUES
(5, 'This is a test post', NULL)

SELECT * FROM "users"
LEFT JOIN post on user_id = post.id; 

SELECT * FROM post
FULL JOIN "users" on post.user_id = "users".id; 