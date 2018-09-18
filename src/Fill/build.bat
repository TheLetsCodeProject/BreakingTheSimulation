@echo off
xcopy /y fill.py "../../bin/Fill/build/fill.py"
cd ../../bin/Fill/build/
pyinstaller --onefile fill.py