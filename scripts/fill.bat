@echo off
IF "%1" == "/?" GOTO :help

:main
echo FILLING "%1" WITH %2 bytes OF DATA
FOR /L %%A IN (1,1, %2) DO (
  ::The set /p param ensures that a new line does not get added
  echo|set /p="0" >> %1
)
goto :end

:help
echo To use this command: fill [filename] [num of bytes] [unit]

:end