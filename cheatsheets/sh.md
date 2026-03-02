# Shell Script Cheatsheet

## Shell Script Syntax

```bash
#!/bin/bash                             # Definisce l'interprete (Bash in questo caso)
echo "Hello, World!"                    # Stampa un messaggio sulla console
$variable = "value"                     # Assegna un valore a una variabile
$variable                               # Accede al valore di una variabile
$(command)                              # Esegue un comando e cattura il risultato
```

## Shell Variables

```bash
variable="Hello"                        # Assegna un valore a una variabile
echo $variable                          # Stampa il valore della variabile
readonly variable="constant"            # Definisce una variabile come costante
unset variable                          # Rimuove una variabile
```

## Shell Conditionals

```bash
if [ $x -eq 10 ]; then                  # Verifica se x è uguale a 10
  echo "x is 10"
elif [ $x -lt 10 ]; then                # Verifica se x è minore di 10
  echo "x is less than 10"
else                                    # Condizione alternativa
  echo "x is greater than 10"
fi

[ $x -eq 10 ] && echo "x is 10" || echo "x is not 10"  # Operatori logici AND/OR
```

## Shell Loops

```bash
for i in {1..5}; do                     # Ciclo for da 1 a 5
  echo $i
done

while [ $x -le 10 ]; do                 # Ciclo while finché x è minore o uguale a 10
  echo $x
  ((x++))                               # Incrementa x
done

until [ $x -gt 10 ]; do                 # Ciclo until finché x è maggiore di 10
  echo $x
  ((x++))                               # Incrementa x
done

for file in *; do                       # Itera su tutti i file nella directory
  echo $file
done
```

## Shell Functions

```bash
my_function() {                         # Definisce una funzione
  echo "This is a function"
}
my_function                            # Chiama una funzione
```

## Shell Input/Output

```bash
read var                                # Legge un input dall'utente e lo memorizza in var
echo "Enter your name:"
read name                                # Legge il nome dell'utente
echo "Hello, $name!"                      # Stampa un messaggio di saluto

echo "Hello, World!" > output.txt        # Scrive in un file
cat output.txt                           # Visualizza il contenuto del file
echo "Append this line" >> output.txt    # Aggiunge una riga a un file
cat >> output.txt                        # Aggiungi input dell'utente al file (dopo invio CTRL+D)
```

## Shell File Operations

```bash
cp file1.txt file2.txt                   # Copia un file
mv file1.txt file2.txt                   # Sposta o rinomina un file
rm file.txt                              # Rimuove un file
touch file.txt                           # Crea un file vuoto
mkdir new_directory                      # Crea una nuova directory
rmdir directory                          # Rimuove una directory vuota
ls                                        # Mostra i file nella directory
```

## Shell String Operations

```bash
str="Hello"                              # Assegna una stringa a una variabile
echo ${#str}                              # Lunghezza della stringa
echo ${str:0:3}                           # Estrai una sottostringa (da posizione 0, 3 caratteri)
echo ${str/Hello/Hi}                      # Sostituisce la parola "Hello" con "Hi"
```

## Shell String Comparison

```bash
if [ "$str1" = "$str2" ]; then            # Confronta due stringhe per uguaglianza
  echo "Strings are equal"
fi

if [ -z "$str" ]; then                    # Verifica se la stringa è vuota
  echo "String is empty"
fi
```

## Shell File Test Operators

```bash
[ -e file ]                              # Verifica se un file esiste
[ -f file ]                              # Verifica se è un file regolare
[ -d directory ]                         # Verifica se è una directory
[ -r file ]                              # Verifica se il file è leggibile
[ -w file ]                              # Verifica se il file è scrivibile
[ -x file ]                              # Verifica se il file è eseguibile
```

## Shell Redirection

```bash
command > file                            # Redirige l'output di un comando in un file
command >> file                           # Aggiunge l'output di un comando a un file
command < file                            # Usa un file come input per un comando
command 2> error.log                      # Redirige l'output degli errori in un file
command &> output.log                     # Redirige sia l'output che gli errori in un file
```

## Shell Process Management

```bash
ps                                        # Mostra i processi in esecuzione
top                                       # Mostra una vista dinamica dei processi
kill <pid>                                # Termina un processo dato il PID
bg                                        # Riprende un processo sospeso in background
fg                                        # Porta un processo in foreground
```

## Shell Exit Codes

```bash
exit 0                                    # Termina lo script con un codice di successo
exit 1                                    # Termina lo script con un codice di errore
```

## Shell Debugging

```bash
set -x                                    # Attiva la modalità di debug (mostra i comandi eseguiti)
set +x                                    # Disattiva la modalità di debug
```