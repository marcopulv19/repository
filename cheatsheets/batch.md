# Batch Cheatsheet

## Basic Syntax

### Comments
```batch
REM This is a comment
:: This is also a comment
```

### Variables
```batch
SET variable=value
SET /A number=10+5
ECHO %variable%
```

### Delayed Expansion
```batch
SETLOCAL ENABLEDELAYEDEXPANSION
SET variable=value
ECHO !variable!
```

## Input & Output

### Display Text
```batch
ECHO Hello, World!
ECHO. (empty line)
```

### Read User Input
```batch
SET /P variable=Enter value: 
```

### Batch Input Parameters
```batch
%0  REM script name
%1  REM first parameter
%*  REM all parameters
%~1 REM parameter without quotes
```

## File Operations

### Create/Write Files
```batch
ECHO content > file.txt        REM overwrite
ECHO content >> file.txt       REM append
(
  ECHO line1
  ECHO line2
) > file.txt
```

### Read Files
```batch
FOR /F "tokens=*" %%A IN (file.txt) DO ECHO %%A
TYPE file.txt
```

### Copy/Move/Delete
```batch
COPY source.txt destination.txt
MOVE source.txt destination.txt
DEL file.txt
DEL /Q /S folder\*.*  REM recursive delete
RD /S /Q folder       REM remove directory
```

### Directory Operations
```batch
CD folder             REM change directory
CD ..                 REM parent directory
DIR                   REM list files
DIR /S                REM recursive list
MKDIR folder          REM create directory
```

## Control Flow

### If Statements
```batch
IF condition (
  commands
)

IF condition (
  commands
) ELSE (
  commands
)

REM Conditions:
REM ==  equal
REM NEQ not equal
REM LSS less than
REM LEQ less than or equal
REM GTR greater than
REM GEQ greater than or equal
REM EXIST check if file exists
REM DEFINED check if variable is defined
```

### Examples
```batch
IF %variable% EQU 5 ECHO Variable is 5
IF EXIST file.txt ECHO File exists
IF DEFINED variable ECHO Variable is set
```

### For Loops
```batch
FOR %%I IN (item1 item2 item3) DO ECHO %%I
FOR /L %%I IN (1,1,10) DO ECHO %%I                REM 1 to 10
FOR /F "tokens=*" %%A IN (file.txt) DO ECHO %%A  REM read file
FOR /R folder %%A IN (*) DO ECHO %%A              REM recursive
FOR /D %%A IN (folder\*) DO ECHO %%A              REM directories
```

### Goto & Labels
```batch
GOTO label
commands skipped
:label
commands executed
```

## Functions (Subroutines)

### Call Subroutine
```batch
CALL :subroutine argument1 argument2
EXIT /B 0

:subroutine
ECHO Arguments: %1 %2
GOTO :EOF
```

## String Operations

### String Length
```batch
SET string=hello
ECHO %string:~0,3%  REM first 3 characters (hel)
ECHO %string:~-3%   REM last 3 characters (llo)
```

### String Replacement
```batch
SET string=hello world
ECHO %string:world=everybody%  REM replace word
```

### Substring
```batch
ECHO %string:~0,5%   REM characters 0-4
ECHO %string:~5%     REM from character 5 to end
```

## Array Operations

### Create Array
```batch
SET array[0]=value1
SET array[1]=value2
ECHO !array[0]!
```

### Iterate Array
```batch
FOR /L %%I IN (0,1,9) DO ECHO !array[%%I]!
```

## Math Operations

```batch
SET /A result=5+3
SET /A result=10*2
SET /A result=10/3
SET /A result=10%%3      REM modulo
SET /A result=2^3        REM power
```

## System Commands

### Display Information
```batch
ECHO %DATE%        REM current date
ECHO %TIME%        REM current time
ECHO %USERNAME%    REM current user
ECHO %COMPUTERNAME%  REM computer name
ECHO %CD%          REM current directory
```

### Execute Programs
```batch
START program.exe
START /WAIT program.exe   REM wait for completion
```

### Check Errorlevel
```batch
command
IF ERRORLEVEL 1 ECHO Error occurred
IF %ERRORLEVEL% EQU 0 ECHO Success
```

### Pause/Timeout
```batch
PAUSE                     REM press any key to continue
TIMEOUT /T 5              REM wait 5 seconds
```

## Advanced Techniques

### Pipe & Redirection
```batch
command > output.txt      REM redirect stdout
command 2> error.txt      REM redirect stderr
command > out.txt 2>&1    REM redirect both
command | findstr pattern REM pipe output
```

### Command Grouping
```batch
(
  ECHO line1
  ECHO line2
  ECHO line3
)
```

### Username & Password Input
```batch
SET /P username=Username: 
REM For password, use third-party tools
```

### Batch File Location
```batch
%~dp0   REM directory of script
%~f0    REM full path of script
%~n0    REM name of script
```

## Common Patterns

### Batch Argument Validation
```batch
IF "%~1"=="" (
  ECHO Usage: script.bat argument
  EXIT /B 1
)
ECHO Argument: %~1
```

### Check if Running as Admin
```batch
2>nul MKDIR "%ProgramFiles%\test_admin" && RD "%ProgramFiles%\test_admin" && (
  ECHO Running as admin
) || (
  ECHO Not running as admin
)
```

### Create Temp File
```batch
SET tempfile=%TEMP%\file_%RANDOM%.tmp
ECHO content > %tempfile%
DEL %tempfile%
```

### Log Output with Timestamp
```batch
ECHO [%DATE% %TIME%] Message >> log.txt
```

## Useful Aliases

```batch
REM Run commands in sequence
command1 && command2  REM run if previous succeeds
command1 || command2  REM run if previous fails

REM Suppress output
command > NUL
command 2> NUL
```
