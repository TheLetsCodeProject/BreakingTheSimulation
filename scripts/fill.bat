@echo off
IF "%1" == "/?" GOTO :help

::Variable declarations
set byte = 1
set /a kb = %byte% * 1024
set /a mb = %kb% * 1024
set /a gb = %mb% * 1024

set /a unit = %3
set /a amount = %1 * % %3 %
:main
echo FILLING "%1" WITH %2 %3 OF DATA
FOR /L %%A IN (1,1, %amount%) DO (
  ::The set /p param ensures that a new line does not get added
  echo|set /p="0" >> %1
)

:help
echo To use this command: fill [filename] [num of bytes] [unit]
