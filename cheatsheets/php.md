# PHP Cheatsheet

## PHP Syntax

```php
<?php
  echo "Hello, World!";  // Stampa un testo
?>
```

## PHP Variables

```php
$var = "Hello";         // Dichiarazione di una variabile
$number = 10;           // Numero intero
$float = 10.5;          // Numero decimale
$bool = true;           // Variabile booleana
$array = [1, 2, 3];     // Array semplice
```

## PHP Data Types

```php
is_int($var);           // Controlla se è un intero
is_float($var);         // Controlla se è un float
is_string($var);        // Controlla se è una stringa
is_bool($var);          // Controlla se è un booleano
is_array($var);         // Controlla se è un array
```

## PHP String Functions

```php
strlen($str);           // Lunghezza della stringa
strtoupper($str);       // Converti in maiuscolo
strtolower($str);       // Converti in minuscolo
substr($str, 0, 5);     // Estrai una sottostringa
```

## PHP Arrays

```php
$array = ["apple", "banana", "cherry"];
echo $array[0];         // Stampa "apple"

array_push($array, "grape");  // Aggiunge un elemento
array_pop($array);            // Rimuove l'ultimo elemento
count($array);                // Conta gli elementi
sort($array);                 // Ordina in ordine crescente
```

## PHP Conditionals

```php
if ($x > 10) {
  echo "Greater than 10";
} elseif ($x == 10) {
  echo "Equal to 10";
} else {
  echo "Less than 10";
}
```

## PHP Loops

```php
for ($i = 0; $i < 5; $i++) {
  echo $i;
}

while ($x < 10) {
  echo $x;
  $x++;
}

foreach ($array as $item) {
  echo $item;
}
```

## PHP Functions

```php
function greet($name) {
  return "Hello, " . $name;
}
echo greet("Alice");
```

## PHP Superglobals

```php
$_GET["param"];       // Recupera un valore dalla query string
$_POST["param"];      // Recupera un valore da un form POST
$_SESSION["user"];    // Variabile di sessione
$_COOKIE["user"];     // Recupera un valore da un cookie
```

## PHP File Handling

```php
$file = fopen("file.txt", "r");   // Apre un file in lettura
fwrite($file, "Hello, World!");   // Scrive su un file
fclose($file);                    // Chiude il file
```

## PHP Database (MySQLi)

```php
$conn = new mysqli("localhost", "user", "pass", "dbname");
$result = $conn->query("SELECT * FROM users");
while ($row = $result->fetch_assoc()) {
  echo $row["name"];
}
$conn->close();
```

## PHP Sessions & Cookies

```php
session_start();                  // Avvia una sessione
$_SESSION["user"] = "Alice";      // Imposta una variabile di sessione

setcookie("user", "Alice", time() + 3600);  // Imposta un cookie valido per 1 ora
echo $_COOKIE["user"];
```

## PHP Error Handling

```php
try {
  throw new Exception("Errore!");
} catch (Exception $e) {
  echo "Caught: " . $e->getMessage();
}
```