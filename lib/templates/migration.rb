Sequel.migration do
  up do
    run <<~DDL
      CREATE TABLE users(
        user_id integer NOT NULL,
        username varchar(320) NOT NULL,
        crypted_password varchar(192) NOT NULL,
        created_at timestamptz NOT NULL DEFAULT current_timestamp,
        updated_at timestamptz NOT NULL DEFAULT current_timestamp,

        PRIMARY KEY (user_id),
        UNIQUE (username)
      );
    DDL
  end

  down do
    run <<~DDL
      DROP TABLE IF EXISTS users;
    DDL
  end
end

