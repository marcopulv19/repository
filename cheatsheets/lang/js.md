# JavaScript Cheatsheet

## JavaScript Syntax

```javascript
console.log("Hello, World!");      // Stampa un messaggio nella console
let x = 10;                        // Dichiarazione di una variabile (let)
const y = 20;                      // Dichiarazione di una variabile costante
var z = 30;                        // Dichiarazione di una variabile (var - obsoleta)
```

## JavaScript Data Types

```javascript
typeof x;                              // Tipo di una variabile
let str = "Hello";                     // Stringa
let num = 10;                          // Numero intero
let floatNum = 10.5;                   // Numero decimale
let isTrue = true;                     // Booleano
let arr = [1, 2, 3];                   // Array
let obj = { name: "Alice", age: 25 };  // Oggetto
```

## JavaScript Functions

```javascript
function greet(name) {
  return "Hello, " + name;
}
console.log(greet("Alice"));         // Chiama una funzione

const greetArrow = (name) => "Hello, " + name;  // Funzione freccia
console.log(greetArrow("Bob"));                 // Chiama la funzione freccia
```

## JavaScript Conditionals

```javascript
if (x > 10) {
  console.log("Greater than 10");
} else if (x == 10) {
  console.log("Equal to 10");
} else {
  console.log("Less than 10");
}

switch (x) {
  case 10:
    console.log("Equal to 10");
    break;
  case 20:
    console.log("Equal to 20");
    break;
  default:
    console.log("Unknown");
}
```

## JavaScript Loops

```javascript
for (let i = 0; i < 5; i++) {
  console.log(i);
}

while (x < 10) {
  console.log(x);
  x++;
}

for (const item of arr) {
  console.log(item);
}

arr.forEach(item => console.log(item));   // Itera sugli elementi dell'array
```

## JavaScript Arrays

```javascript
let arr = [1, 2, 3, 4];
arr.push(5);                          // Aggiunge un elemento alla fine dell'array
arr.pop();                            // Rimuove l'ultimo elemento
arr.shift();                          // Rimuove il primo elemento
arr.unshift(0);                       // Aggiunge un elemento all'inizio dell'array
arr.length;                           // Lunghezza dell'array
arr.slice(1, 3);                      // Estrae una porzione dell'array (da indice 1 a 3)
```

## JavaScript Objects

```javascript
let person = {
  name: "Alice",
  age: 25,
  greet() {
    return "Hello, " + this.name;
  }
};
console.log(person.greet());              // Chiama una funzione dell'oggetto

for (let key in person) {
  console.log(key + ": " + person[key]);  // Itera sulle proprietà dell'oggetto
}
```

## JavaScript Events

```javascript
document.getElementById("myButton").addEventListener("click", function() {
  alert("Button clicked!");
});
```

## JavaScript DOM Manipulation

```javascript
let element = document.getElementById("myDiv");
element.innerHTML = "New content";           // Modifica il contenuto HTML
element.style.color = "red";                 // Modifica lo stile CSS
```

## JavaScript Promises

```javascript
let promise = new Promise((resolve, reject) => {
  let success = true;
  if (success) {
    resolve("Success!");
  } else {
    reject("Error!");
  }
});

promise.then(result => {
  console.log(result);
}).catch(error => {
  console.log(error);
});
```

## JavaScript Asynchronous (Async/Await)

```javascript
async function fetchData() {
  let response = await fetch('https://api.example.com/data');
  let data = await response.json();
  console.log(data);
}

fetchData();
```

## JavaScript Classes

```javascript
class Person {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }
  greet() {
    return "Hello, " + this.name;
  }
}

const person1 = new Person("Alice", 25);
console.log(person1.greet());
```