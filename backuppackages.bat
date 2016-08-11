@echo off

set ATOM_BIN=D:\tmp\Atom
set ATOM_HOME=D:\src\oasp-atom-ide\config

%ATOM_BIN%\resources\app\apm\bin\apm  list --installed --bare %ATOM_HOME%\packages.lst
