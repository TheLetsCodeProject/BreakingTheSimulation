@echo off
IF "%1" == "/?" GOTO :help
:main
echo FILLING "%1" WITH %2 BYTES OF DATA
FOR /L %%A IN (1,1, %2) DO (
  echo|set /p="0" >> %1
)
:help
echo To use this command: fill [filename] [num of bytes]
