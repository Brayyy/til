# Increment and initialize counter

Simple one-liner to increment a number, even if it isn't yet initialized.

```javascript
// One-liner
counter[key] = (counter[key] || 0) + 1;

// ...better than
if (counter[key] === undefined) counter[key] = 0;
counter[key]++;
```
