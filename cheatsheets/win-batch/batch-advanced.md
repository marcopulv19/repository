# Batch Advanced Techniques Cheatsheet

## Control Flow Operators

| Operator | Description |
|----------|-------------|
| `&&` | AND - execute next only if previous succeeds |
| `\|\|` | OR - execute next only if previous fails |
| `&` | Sequential - execute regardless |

## Command Grouping

| Syntax | Description |
|--------|-------------|
| `(command1 & command2)` | Group commands in parentheses |
| `(command1 \| findstr pattern)` | Pipe within group |
| `CALL :label` | Call labeled subroutine |
| `GOTO :EOF` | Go to end of file |

## Variables and Scope

| Syntax | Description |
|--------|-------------|
| `SET variable=value` | Set variable |
| `SET /A variable=expression` | Set to arithmetic result |
| `SET /P variable=Prompt: ` | Prompt user for input |
| `SETLOCAL` | Create local scope |
| `ENDLOCAL` | End local scope |
| `SETLOCAL ENABLEDELAYEDEXPANSION` | Enable delayed expansion with `!var!` |

## Parameter Handling

| Syntax | Description |
|--------|-------------|
| `%0` | Script name |
| `%1, %2, %3...` | Positional parameters |
| `%*` | All parameters |
| `%~1` | Parameter without quotes |
| `%~f1` | Full path of parameter |
| `%~d1` | Drive of parameter |
| `%~p1` | Path of parameter |
| `%~n1` | Filename of parameter |
| `%~x1` | File extension |
| `%~dp0` | Script's directory path |
| `%~f0` | Script's full path |

## String Operations

| Syntax | Description |
|--------|-------------|
| `%string:~0,5%` | Extract first 5 characters |
| `%string:~-3%` | Extract last 3 characters |
| `%string:old=new%` | Replace text |
| `IF "%var%"==""` | Check if variable empty |
| `SET result=%var1%%var2%` | Concatenate strings |

## Array Operations

| Syntax | Description |
|--------|-------------|
| `SET array[0]=value1` | Create array element |
| `ECHO !array[0]!` | Access array element |
| `FOR /L %%I IN (0,1,9) DO ECHO !array[%%I]!` | Iterate array |

## Loop Structures

| Syntax | Description |
|--------|-------------|
| `FOR %%I IN (list) DO` | Iterate over items |
| `FOR /L %%I IN (start,step,end) DO` | Numeric range loop |
| `FOR /F "tokens=*" %%A IN (file.txt) DO` | Read file lines |
| `FOR /R folder %%A IN (*) DO` | Recursive directory walk |
| `FOR /D %%A IN (folder\*) DO` | Iterate directories |

## File I/O Patterns

| Syntax | Description |
|--------|-------------|
| `(ECHO line1 & ECHO line2) > file.txt` | Create multi-line file |
| `FOR /F "tokens=*" %%A IN (file.txt) DO ECHO %%A` | Read file line by line |
| `TYPE file.txt >> accumulate.txt` | Append file contents |
| `DEL /Q /S folder\*.*` | Recursive file deletion |
| `RD /S /Q folder` | Remove directory tree |

## Subroutine Patterns

| Syntax | Description |
|--------|-------------|
| `CALL :subroutine` | Call subroutine |
| `CALL :subroutine param1 param2` | Call with parameters |
| `GOTO :EOF` | Exit subroutine |
| `:label` | Subroutine label |

## Conditional Patterns

| Syntax | Description |
|--------|-------------|
| `IF condition (commands)` | Basic if statement |
| `IF condition (cmds) ELSE (cmds)` | If-else statement |
| `IF EXIST file.txt` | Check file existence |
| `IF DEFINED variable` | Check if variable defined |
| `IF "%var%"=="value"` | String comparison |
| `IF %num% EQU 5` | Numeric comparison |

## Comparison Operators

| Operator | Description |
|----------|-------------|
| `EQU` | Equal |
| `NEQ` | Not equal |
| `LSS` | Less than |
| `LEQ` | Less than or equal |
| `GTR` | Greater than |
| `GEQ` | Greater than or equal |
