# QAs

## Where is located the pg_hba.conf file

We can find its location using the SQL query: `show hba_file;`

## Format of a line of the pg_hba.conf file

`(local|host|hostssl|hostnossl|hostgssenc|hostnogssenc) ((<database-name>,<data-basename>*)|all|sameuser|samerole|replication) (+?<role-name>,<role-name>*|all) ((<dns>|<ip>|<subnet>)*) (reject|trust|md5|scram-sha-256)`

## This is a well format line of pg_hba.conf

`local bookstore book-reviewrs  scram-sha-256`

## How to send a SIGHUP signal to the server?

`> pg_ctl reload` or `SELECT pg_reload_conf();`

## Reference

[pg_hba configuration](https://www.postgresql.org/docs/current/auth-pg-hba-conf.html)
