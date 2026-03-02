# JSON Cheatsheet

## JSON Syntax

```json
{
  "key": "value"
}
```

JSON (JavaScript Object Notation) is a lightweight data format used for exchanging data between servers and web applications.

## JSON Data Types

```json
{
  "string": "Hello, World!",           // Stringa di testo tra virgolette doppie
  "number": 42,                        // Numero intero
  "float": 3.14,                       // Numero decimale
  "boolean": true,                     // Valore booleano (true o false)
  "null": null,                        // Valore nullo
  "array": [1, 2, 3],                  // Array (lista) di elementi
  "object": { "nested": "value" }      // Oggetto annidato
}
```

## JSON Objects

```json
{
  "name": "Alice",
  "age": 25,
  "city": "New York",
  "email": "alice@example.com"
}
```

Un oggetto JSON è una raccolta di coppie chiave-valore racchiuse tra parentesi graffe `{}`.

## JSON Arrays

```json
{
  "fruits": ["apple", "banana", "cherry"],
  "numbers": [1, 2, 3, 4, 5],
  "mixed": [1, "two", 3.0, true, null]
}
```

Un array JSON è una lista ordinata di valori racchiusa tra parentesi quadre `[]`.

## JSON Nested Structures

```json
{
  "person": {
    "name": "Bob",
    "age": 30,
    "address": {
      "street": "123 Main St",
      "city": "Los Angeles",
      "zipcode": "90001"
    },
    "hobbies": ["reading", "gaming", "cooking"]
  }
}
```

Gli oggetti e gli array possono essere annidati per creare strutture dati complesse.

## JSON Strings & Escaping

```json
{
  "text": "Hello, World!",
  "with_quotes": "He said \"Hello\"",
  "with_newline": "Line 1\nLine 2",
  "with_tab": "Name\tValue",
  "with_backslash": "C:\\Users\\Desktop",
  "unicode": "\u0041"
}
```

Le stringhe JSON devono essere racchiuse tra virgolette doppie e supportano i seguenti caratteri di escape:
- `\"` - Virgoletta doppia
- `\\` - Backslash
- `\n` - Nuova riga
- `\t` - Tabulazione
- `\uXXXX` - Carattere Unicode

## JSON Numbers

```json
{
  "integer": 42,
  "negative": -10,
  "decimal": 3.14,
  "exponential": 1.5e2,
  "negative_exponential": -2e3
}
```

I numeri JSON possono essere interi, decimali, negativi o in notazione esponenziale.

## JSON Comments (Not Standard)

```json
// Nota: I commenti non sono ufficialmente supportati da JSON standard,
// ma molti parser tollerano commenti di stile C
{
  "key": "value"  // Un commento
}
```

I commenti non sono parte dello standard JSON, anche se alcuni parser li tollerano.

## JSON Example: User Profile

```json
{
  "id": 1,
  "username": "alice123",
  "email": "alice@example.com",
  "profile": {
    "firstName": "Alice",
    "lastName": "Johnson",
    "age": 28,
    "dateOfBirth": "1995-03-15"
  },
  "isActive": true,
  "roles": ["user", "editor"],
  "lastLogin": "2025-12-20T10:30:00Z"
}
```

## JSON Example: API Response

```json
{
  "status": "success",
  "code": 200,
  "data": {
    "users": [
      {
        "id": 1,
        "name": "Alice",
        "email": "alice@example.com"
      },
      {
        "id": 2,
        "name": "Bob",
        "email": "bob@example.com"
      }
    ]
  },
  "message": "Users retrieved successfully"
}
```

## JSON Example: Configuration File

```json
{
  "appName": "MyApp",
  "version": "1.0.0",
  "environment": "production",
  "database": {
    "host": "localhost",
    "port": 5432,
    "username": "admin",
    "password": "secret"
  },
  "server": {
    "port": 8080,
    "debug": false,
    "cors": {
      "enabled": true,
      "allowedOrigins": ["http://localhost:3000", "https://example.com"]
    }
  },
  "logging": {
    "level": "info",
    "logFile": "/var/log/app.log"
  }
}
```

## JSON Validation Rules

- Las claves siempre deben estar entre comillas dobles
- Los valores de cadena deben estar entre comillas dobles
- Los números no deben tener comillas
- Los booleanos (`true`, `false`) no tienen comillas
- `null` no tiene comillas
- No se permite una coma final después del último elemento
- Se requieren dos puntos (`:`) entre clave y valor
- Se requieren comas (`,`) entre pares clave-valor

## JSON Tools & Commands

```bash
# Validar JSON con jq (instalare jq primero)
jq . file.json

# Formatear JSON con jq
jq '.' file.json

# Usar Python para validar JSON
python -m json.tool file.json

# Usar Node.js para validar JSON
node -e "console.log(JSON.stringify(JSON.parse(require('fs').readFileSync('file.json', 'utf8')), null, 2))"
```

## JSON Best Practices

- Usa nomi di chiave descrittivi e coerenti
- Usa la notazione camelCase per le chiavi: `firstName` invece di `first_name`
- Evita di usare chiavi numeriche se possibile
- Mantieni la struttura semplice e logica
- Usa array per elenchi di elementi omogenei
- Usa oggetti per strutture di dati con proprietà denominate
- Valida sempre il JSON prima di elaborarlo