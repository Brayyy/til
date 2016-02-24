# Return value of isset, otherwise return default value

```php
// Returns var value if defined, otherwise default. Variable is passed by reference, avoiding possible undefined warning.
function isSetOr(&$var, $default = ''){
  return isset($var) ? $var : $default;
}

$definedVar = "This was defined";
echo isSetOr($definedVar,'This was not defined');

// Prints "This was defined"

echo isSetOr($unDefinedVar,'This was not defined');

// Prints "This was not defined"
```