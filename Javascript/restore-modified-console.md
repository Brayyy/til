# Restore a modified console object

Sometimes people feel the need to modify the `console` object, to either suppress logging, or to intercept it. However, that can cause problems for debugging, and the best way to get around this is to delete the method inside the `console` object. As there may be a number of changes to `console`, here's a quick way to clear it out and set it back to stock functionality.

```javascript
keys(console).forEach(function(k) { delete console[k]; console.log('reset '+k);});
```

And seeing it in action:

```javascript

// Suppress logging!
console.log = function(){};
console.warn = function(){};
console.error = function(){};

// No output will occur
console.log('Important message fell on deaf ears');

// Restore console to glory!
keys(console).forEach(function(k) { delete console[k]; console.log('reset '+k);});
// > reset log
// > reset warn
// > reset error

// Welcome back console.log
console.log('Thanks, I missed you.');
// > Thanks, I missed you.
```
