# Batch Advanced Techniques Cheatsheet

## Control Flow Operators

| Operator | Description | Example |
|----------|-------------|---------|
| `&&` | AND - Execute next only if previous succeeds | `command1 && command2` |
| `\|\|` | OR - Execute next only if previous fails | `command1 \|\| command2` |
| `&` | Sequential - Execute regardless | `command1 & command2` |

## Command Grouping and Execution

| Syntax | Description |
|--------|-------------|
| `(command1 & command2)` | Group commands in parentheses |
| `(command1 |findstr pattern)` | Pipe within group |
| `CALL :label` | Call labeled subroutine |
| `GOTO :EOF` | Go to end of file (exit subroutine) |

## Variable Scope and Expansion

| Technique | Description |
|-----------|-------------|
| `SETLOCAL` | Create local variable scope |
| `ENDLOCAL` | End local variable scope |
| `SETLOCAL ENABLEDELAYEDEXPANSION` | Enable delayed expansion with `!var!` |
| `SET variable=value` | Set variable (immediate expansion with `%var%`) |
| `SET /A variable=expression` | Set variable to arithmetic result |
| `SET /P variable=Prompt: ` | Prompt user for input |

## Parameter Handling

| Syntax | Description |
|--------|-------------|
| `%0` | Script name |
| `%1, %2, %3...` | Parameters (positional) |
| `%*` | All parameters |
| `%~1` | Parameter without quotes |
| `%~f1` | Full path of parameter |
| `%~d1` | Drive of parameter |
| `%~p1` | Path of parameter |
| `%~n1` | Filename of parameter |
| `%~x1` | File extension of parameter |
| `%~t1` | Date/time of parameter |
| `%~z1` | Size of parameter |
| `%~dp0` | Script's directory path |
| `%~f0` | Script's full path |

## String Manipulation

| Technique | Description | Example |
|-----------|-------------|---------|
| Substring | Extract characters | `%string:~0,5%` (first 5) |
| Substring from end | Extract from end | `%string:~-3%` (last 3) |
| String replacement | Replace text | `%string:old=new%` |
| Length check | Check if empty | `IF "%var%"==""` |
| Concatenation | Join strings | `SET result=%var1%%var2%` |

## Array and List Operations

| Technique | Description | Example |
|-----------|-------------|---------|
| Create array | Index-based storage | `SET array[0]=value1` |
| Access array | Retrieve element | `ECHO !array[0]!` |
| Iterate array | Loop through elements | `FOR /L %%I IN (0,1,9) DO ECHO !array[%%I]!` |
| Dynamic array | Variable-length array | Use increment counter |

## File I/O Patterns

| Pattern | Description |
|---------|-------------|
| `(ECHO line1 & ECHO line2) > file.txt` | Create multi-line file |
| `FOR /F "tokens=*" %%A IN (file.txt) DO ECHO %%A` | Read file line by line |
| `FINDSTR "pattern" file.txt > results.txt` | Filter file contents |
| `TYPE file.txt >> accumulate.txt` | Append file contents |
| `DEL /Q /S folder\*.*` | Recursive file deletion |
| `RD /S /Q folder` | Remove directory tree |

## Loop Structures

| Loop Type | Syntax | Description |
|-----------|--------|-------------|
| For-In | `FOR %%I IN (list) DO` | Iterate over items |
| For-Range | `FOR /L %%I IN (start,step,end) DO` | Numeric range loop |
| For-File | `FOR /F %%A IN (file.txt) DO` | Read file lines |
| For-Recursive | `FOR /R folder %%A IN (*) DO` | Recursive directory walk |
| For-Directory | `FOR /D %%A IN (folder\*) DO` | Iterate directories |

## Subroutine Patterns

| Pattern | Description |
|---------|-------------|
| Basic call | `CALL :subroutine` |
| With parameters | `CALL :subroutine param1 param2` |
| Return value | Use `ERRORLEVEL` |
| Local variables | Use `SETLOCAL` in subroutine |
| Exit subroutine | `GOTO :EOF` |

## Conditional Execution Patterns

| Pattern | Description | Example |
|---------|-------------|---------|
| If-Then | Basic condition | `IF condition (commands)` |
| If-Then-Else | With alternative | `IF condition (cmds) ELSE (cmds)` |
| File check | Check if file exists | `IF EXIST file.txt` |
| Variable check | Check if defined | `IF DEFINED variable` |
| String compare | Compare strings | `IF "%var%"=="value"` |
| Numeric compare | Compare numbers | `IF %num% EQU 5` |

## Advanced Operators and Comparisons

| Operator | Description |
|----------|-------------|
| `EQU` | Equal |
| `NEQ` | Not equal |
| `LSS` | Less than |
| `LEQ` | Less than or equal |
| `GTR` | Greater than |
| `GEQ` | Greater than or equal |

## Working with Dates and Times

| Command | Description |
|---------|-------------|
| `ECHO %DATE%` | Current date |
| `ECHO %TIME%` | Current time |
| `FOR /F "tokens=1-3 delims=/\" %%A IN ('ECHO %DATE%') DO (SET yy=%%C & SET mm=%%A & SET dd=%%B)` | Parse date |
| `SETLOCAL ENABLEDELAYEDEXPANSION` | Enable for dynamic timestamps |

## Registry and System Integration

| Command | Description |
|---------|-------------|
| `REG QUERY "HKLM\Software\..." ` | Query registry |
| `REG ADD "HKLM\Software\..." /V key /D value` | Add registry entry |
| `WMIC os get version` | Get OS version via WMI |
| `WMIC logicaldisk get name,freespace` | Get disk info via WMI |

## Performance and Optimization

| Technique | Purpose |
|-----------|---------|
| `@ECHO OFF` | Suppress command echo (faster) |
| `SETLOCAL` | Isolate variable scope (cleaner) |
| Batch arrays in memory | Faster than file I/O |
| Minimize file operations | Use in-memory operations where possible |
| Use `FOR /F` with NUL | Faster than creating temp files |
