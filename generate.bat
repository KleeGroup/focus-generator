@echo off

REM Config items:
REM applicationRoot = relative path (from this .bat) to the application root folder.
REM ( = the folder that contains the 'app' folder )
set applicationRoot=../../SPA-skeleton/
echo applicationRoot %applicationRoot%
REM pathToGeneratorBat = relative path (from this.bat) to the generator.bat file.
set pathToGeneratorBat=.


set callingDirectory=%cd%
set batFileDirectory=%~dp0
cd %batFileDirectory%
call %pathToGeneratorBat%\generator.bat %batFileDirectory%\%applicationRoot%
cd %callingDirectory%
pause