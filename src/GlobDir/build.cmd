@echo off
echo Building solution
set buildconfig=Release
msbuild "%~dp0globdir.sln" /p:Configuration=%buildconfig% /verbosity:minimal %1 %2 %3 %4 %5
set bindir=%~dp0globdir\bin\%buildconfig%\
set packagedir=%~dp0package\
if not exist "%packagedir%" md "%packagedir%"
copy "%bindir%globdir.dll" %packagedir%
echo Solution built