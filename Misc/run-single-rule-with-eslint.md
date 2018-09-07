# Run a single rule with ESLint

When doing large refactoring jobs, it can be very beneficial to run the ESLint auto fix function using only a single rule, and break your commits up by each rule applied. This makes comparing the changes much easier.

```bash
eslint --no-eslintrc --parser-options ecmaVersion:6 --rule dot-notation:error *.js --fix
```


Source:

https://github.com/eslint/eslint/issues/5377#issuecomment-260874844