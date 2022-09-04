# Managing tables

## CREATE TABLE syntax

```postgres
CREATE TABLE [IF NOT EXISTS] table_name (
  column1 datatype(length) column_constraint,
  column2 datatype(length) column_constraint,
  column3 datatype(length) column_constraint,
  table_constraints
);
```

If we try to create a table that already exists, it will lead to an error.

### Types of tables

- Temporary tables: Very fast tables, visible only to the user who created them.
- Unlogged tables: Very fast tables to be used as support tables common to all users.
- Logged tables: Regular tables.

```postgres
CREATE [ [ GLOBAL | LOCAL ] { TEMPORARY | TEMP } | UNLOGGED ] TABLE ();
```

### GENERATED AS IDENTITY

`<column-name> <type> GENERATED { ALWAYS | BY DEFAULT } AS IDENTITY[ ( sequence_option ) ]`

- The type can be `SMALLINT`, `INT` or `BIGINT`.
- The `GENERATED ALWAYS` instructs PostgreSQL to always generate a value for the identity column. If you attempt to insert (or update) values into the `GENERATED ALWAYS AS IDENTITY` column, PostgreSQL will issue an error.

### Constraints

- `NOT NULL`: Ensures that values in a column cannot be `NULL`.
- `UNIQUE`: Ensures the values in a column unique across the rows within the same table.
- `PRIMARY KEY`: A primary key column uniquely identify rows in a table. A table can have one and only one primary key. The primary key constraint allows you to define the primary key of a table.
- `CHECK`: This constraint ensure that data must satisfy a boolean expression.
- `FOREIGN KEY`: Ensures values in a column or a group of columns from a table exists in a column or group of columns in another table. Unlike the primary key, a table can have many foreign keys.

### Create a table like other

Inside like_option we can include `INCLUDING` or exclude `EXCLUDING`:

- `COMMENTS`
- `COMPRESSION`
- `CONSTRAINTS`
- `DEFAULTS`
- `GENERATED`
- `IDENTITY`
- `INDEXES`
- `STATISTICS`
- `STORAGE`
- `ALL`

```postgres
-- LIKE <older_table> like_option

CREATE new_table LIKE older_table INCLUDING ALL
```
