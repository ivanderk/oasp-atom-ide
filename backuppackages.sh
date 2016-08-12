@echo off

pushd %~dp0

call env.bat

%ATOM_BIN%\resources\app\apm\bin\apm  list --installed --bare %ATOM_HOME%\packages.lst

popd
