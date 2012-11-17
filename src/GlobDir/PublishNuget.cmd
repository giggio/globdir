@echo off
set packagedir=%~dp0package\
set nugetdir=%~dp0packages\NuGet.CommandLine.2.1.2\
set nugetfile=%packagedir%globdir.nupkg
set nugetexe="%nugetdir%tools\nuget.exe"
FOR /F %%i IN (%~dp0..\..\..\nuget\apikey.txt) DO set apikey=%%i
%nugetexe% setapikey %apikey% -Verbosity quiet
call "%~dp0CreateNuget.cmd"
if not exist "%packagedir%" goto :error
echo Pushing nuget file to nuget.org
%nugetexe% push "%nugetfile%" %1 %2 %3 %4
echo Nuget package pushed to nuget.org
exit /B

:error
echo Package not found and cannot be published
exit /B 1