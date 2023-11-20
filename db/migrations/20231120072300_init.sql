-- migrate:up
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE
  public."user" (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 (),
    name TEXT
  );

-- migrate:down
DROP TABLE public."user";

DROP EXTENSION IF EXISTS "uuid-ossp";