# Batch Debugging Cheatsheet

## Error Handling

| Command | Description |
|---------|-------------|
| `if %ERRORLEVEL% EQU 0` | Check if last command succeeded |
| `if NOT %ERRORLEVEL% EQU 0` | Check if last command failed |
| `if ERRORLEVEL 1` | Check if error level is 1 or greater |
| `echo %ERRORLEVEL%` | Display error code of last command |
| `command && (echo Success) || (echo Failed)` | Execute conditional commands |

## Output and Logging

| Command | Description |
|---------|-------------|
| `REM Comment text` | Add a comment |
| `:: Comment text` | Alternative comment syntax |
| `ECHO Message` | Display message to console |
| `ECHO.` | Print blank line |
| `command > output.txt` | Redirect output to file |
| `command >> output.txt` | Append output to file |
| `command 2> error.txt` | Redirect errors to file |
| `command > out.txt 2>&1` | Redirect both output and errors |
| `command > NUL` | Suppress output |
| `command 2> NUL` | Suppress errors |
| `@echo off` | Suppress command echo |

## Variable Inspection and Scope

| Command | Description |
|---------|-------------|
| `SET` | Display all environment variables |
| `ECHO %variable%` | Display specific variable value |
| `SETLOCAL` | Create local variable scope |
| `ENDLOCAL` | End local variable scope |
| `SETLOCAL ENABLEDELAYEDEXPANSION` | Enable delayed variable expansion |
| `FOR /F "tokens=*" %%A IN ('command') DO ECHO %%A` | Capture command output |

## Debugging Techniques

| Command | Description |
|---------|-------------|
| `ECHO Current directory: %CD%` | Display current working directory |
| `ECHO Script location: %~dp0` | Display script directory path |
| `ECHO Full path: %~f0` | Display full script path |
| `PAUSE` | Pause execution and wait for key press |
| `TIMEOUT /T 5` | Wait 5 seconds before continuing |
| `title %CD%` | Set console window title |

## Process and System Diagnostics

| Command | Description |
|---------|-------------|
| `tasklist` | List running processes |
| `tasklist /FI "IMAGENAME eq notepad.exe"` | Filter specific process |
| `systeminfo` | Display system information |
| `ipconfig /all` | Display network configuration |
| `netstat -an` | Display network connections |

## File System Diagnostics

| Command | Description |
|---------|-------------|
| `dir /A` | List files including hidden |
| `dir /S` | List all files recursively |
| `attrib <file>` | Display file attributes |
| `findstr /R /N "pattern" file.txt` | Search with line numbers |
| `fc file1.txt file2.txt` | Compare two files |
| `tree /F` | Display directory tree structure |
