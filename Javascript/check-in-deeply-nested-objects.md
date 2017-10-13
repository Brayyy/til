# Check for the existence of something in a deeply nested object

If the structure of a deeply nested object is known, but the existance of each level of the nesting may not exist, rather than having to do something like this:

```javascript
  var caPopulation;
  if (
    people &&
    people.usa &&
    people.usa.california &&
    people.usa.california.population
  ) {
    caPopulation = people.usa.california.population;
  }
```

You can do something like this:

```javascript
  var caPopulation = (((people || {}).usa || {}).california || {}).population || null;
```

Source:

https://stackoverflow.com/questions/2631001/javascript-test-for-existence-of-nested-object-key
http://jsben.ch/7aJgK