@echo off

pushd %~dp0

call env.bat

start /min %ATOM_BIN%\atom

popd
