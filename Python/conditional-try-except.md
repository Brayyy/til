# Conditional exception handling

I had a need to handle Python try/except with exception fall through, much like how switch statement works.

Solved by using a ternary in the exception definition:

```python
class NeverMatch(Exception):
    "An exception class that is never raised by any code anywhere"
    pass

def __runSqlQuery(sqlClient, sql, sqlErrorOk=False):
    try:
        # Attempt to run a SQL query
        cursor = sqlClient.cursor()
        cursor.execute(sql)
        return cursor.fetchall()
    except (NeverMatch if sqlErrorOk else mysql.connector.Error) as e:
        # If sqlErrorOk == False, handle mysql.connector.Error errors
        # If sqlErrorOk == True,  handle NeverMatch, which will never occur
        pass
    except Exception as e:
        # If sqlErrorOk == False, handle all other errors
        # If sqlErrorOk == True, handle all errors, including mysql.connector.Error
        pass
```

Solved by handling all exception cases using `isinstance()` and `if` logic:

```python
def __runSqlQuery(sqlClient, sql, sqlErrorOk=False):
    try:
        # Attempt to run a SQL query
        cursor = sqlClient.cursor()
        cursor.execute(sql)
        return cursor.fetchall()
    except Exception as e:
        if isinstance(e, mysql.connector.Error) and sqlErrorOk == False:
            # If sqlErrorOk == False, handle mysql.connector.Error errors
            pass
        else:
            # If sqlErrorOk == False, handle all other errors
            # If sqlErrorOk == True, handle all errors, including mysql.connector.Error
            pass
```
