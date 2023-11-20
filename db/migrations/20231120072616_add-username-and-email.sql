-- migrate:up
ALTER TABLE public."user"
ADD COLUMN username TEXT UNIQUE;

ALTER TABLE public."user"
ADD COLUMN email TEXT UNIQUE;

-- migrate:down
ALTER TABLE public."user"
DROP COLUMN email;

ALTER TABLE public."user"
DROP COLUMN username;