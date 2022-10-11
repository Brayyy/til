# Convert string to a bit string / array

```javascript
const stringToBinaryString = s => s.split("").reduce((a, b) => a + b.charCodeAt(0).toString(2), "");

// stringToBinaryString("Hi")
// '10010001101001'
```

```javascript
const stringToBinaryArray = s => s.split("").reduce((a, b) => a + b.charCodeAt(0).toString(2), "").split("");

// stringToBinaryArray("Hi")
// [ '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '1', '0', '0', '1' ]
```
