# SQL Cheatsheet

## SQL Syntax

```sql
SELECT column1, column2 FROM table_name;        -- Seleziona colonne specifiche da una tabella
SELECT * FROM table_name;                       -- Seleziona tutte le colonne da una tabella
```

## SQL Data Types

```sql
INT                                            -- Numero intero
VARCHAR(n)                                     -- Stringa di lunghezza variabile
CHAR(n)                                        -- Stringa di lunghezza fissa
DATE                                           -- Data (anno, mese, giorno)
DECIMAL(p, s)                                  -- Numero decimale con precisione p e scala s
BOOLEAN                                        -- Valore booleano (true/false)
```

## SQL Constraints

```sql
PRIMARY KEY                                    -- Chiave primaria (univoca e non nulla)
FOREIGN KEY (column) REFERENCES table_name;    -- Chiave esterna che fa riferimento a un'altra tabella
UNIQUE                                         -- Valore univoco per una colonna
NOT NULL                                       -- Non accetta valori nulli
CHECK (condition)                              -- Condizione da rispettare per i valori della colonna
DEFAULT value                                  -- Imposta un valore di default per una colonna
```

## SQL SELECT Clauses

```sql
WHERE condition                                -- Filtra i record in base a una condizione
ORDER BY column ASC|DESC                       -- Ordina i risultati (ASC per crescente, DESC per decrescente)
LIMIT number                                   -- Limita il numero di righe restituite
DISTINCT                                       -- Restituisce solo valori unici
```

## SQL Joins

```sql
INNER JOIN table2 ON table1.column = table2.column;
-- Restituisce le righe che hanno corrispondenza in entrambe le tabelle

LEFT JOIN table2 ON table1.column = table2.column;
-- Restituisce tutte le righe dalla tabella di sinistra e le corrispondenze dalla tabella di destra

RIGHT JOIN table2 ON table1.column = table2.column;
-- Restituisce tutte le righe dalla tabella di destra e le corrispondenze dalla tabella di sinistra

FULL OUTER JOIN table2 ON table1.column = table2.column;
-- Restituisce tutte le righe da entrambe le tabelle, con null dove non c'è corrispondenza
```

## SQL Aggregate Functions

```sql
COUNT(column)                                   -- Conta il numero di righe
SUM(column)                                     -- Somma i valori di una colonna
AVG(column)                                     -- Calcola la media di una colonna
MIN(column)                                     -- Trova il valore minimo di una colonna
MAX(column)                                     -- Trova il valore massimo di una colonna
```

## SQL Grouping

```sql
GROUP BY column                                 -- Raggruppa i risultati per una colonna
HAVING condition                                -- Filtra i risultati dopo il raggruppamento (usato con GROUP BY)
```

## SQL Subqueries

```sql
SELECT * FROM table1 WHERE column IN (SELECT column FROM table2);
-- Subquery che restituisce valori da un'altra query

SELECT * FROM table1 WHERE column = (SELECT column FROM table2 WHERE condition LIMIT 1);
-- Subquery che restituisce un singolo valore
```

## SQL Modifying Data

```sql
INSERT INTO table_name (column1, column2) VALUES (value1, value2);
-- Inserisce un nuovo record nella tabella

UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;
-- Aggiorna i valori di un record esistente

DELETE FROM table_name WHERE condition;
-- Elimina un record dalla tabella
```

## SQL Indexes

```sql
CREATE INDEX index_name ON table_name (column);    -- Crea un indice su una colonna della tabella
DROP INDEX index_name;                             -- Rimuove un indice
```

## SQL Transactions

```sql
START TRANSACTION;                             -- Inizia una transazione
COMMIT;                                        -- Salva i cambiamenti della transazione
ROLLBACK;                                      -- Annulla i cambiamenti della transazione
```

## SQL Views

```sql
CREATE VIEW view_name AS SELECT column1, column2 FROM table_name WHERE condition;
-- Crea una vista (query salvata)

SELECT * FROM view_name;                        -- Seleziona dalla vista
```

## SQL ALTER TABLE

```sql
ALTER TABLE table_name ADD column_name datatype;
-- Aggiunge una colonna alla tabella

ALTER TABLE table_name DROP COLUMN column_name;
-- Rimuove una colonna dalla tabella

ALTER TABLE table_name MODIFY COLUMN column_name new_datatype;
-- Modifica una colonna
```

## SQL Triggers

```sql
CREATE TRIGGER trigger_name BEFORE|AFTER INSERT|UPDATE|DELETE ON table_name FOR EACH ROW BEGIN ... END;
-- Crea un trigger

DROP TRIGGER trigger_name;
-- Rimuove un trigger
```