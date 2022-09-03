# Data types

## Boolean

A boolean data type can hold one of three possible values: `true`, `false` or `null`.

You use `boolean` or `bool` keyword to declare a column with the Boolean data type.

- `1`, `yes`, `y`, `true`, `t` values are converted to `true`.
- `0`, `no`, `false`, `f` values are converted to `false`.

When you select data from a Boolean column, PostgreSQL converts the values back e.g.,
`t` to `true`, `f` to `false` and `space` to `null`.


## References

- [Boolean](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-data-types/)