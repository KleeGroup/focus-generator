@echo off

REM CONFIG ITEMS
    REM Set the application root folder (the folder that contains the 'app' folder).
    set applicationRoot=%1
REM /CONFIG ITEMS

set currentDirectory=%cd%
set batFileDirectory=%~dp0

cd %batFileDirectory%
setlocal ENABLEDELAYEDEXPANSION

REM Display available generators.
set i=0
for /F "delims=" %%G in ('node .\scaffolt\scaffolt --list') do (
    if !i!==0 (
      echo %%G
    ) else (
        set generator=%%G
        echo !i! !generator:~3!
    )
    set /A i=i+1
)


REM Prompt for generatorType.
set /p generatorType= Type du g‚n‚rateur (voir liste ci-dessus) ? 

REM If input was a number, lookup generatorType in the list given by scaffolt.
set i=0
for /F "delims=" %%G in ('node .\scaffolt\scaffolt --list') do (
    if !generatorType!==!i! (
        set generatorName=%%G
        set generatorType=!generatorName:~3!
    )
    set /A i=i+1
)

REM Prompt for name and module.
set /p name= Nom du modŠle concern‚ par les fichiers g‚n‚r‚s ? 
set /p module= Nom du module auquel appartient le modŠle ? 

REM Generate files
cd %applicationRoot%
node %batFileDirectory%\scaffolt\scaffolt !generatorType! %name% module:%module% --generators %batFileDirectory%\generators
cd %currentDirectory%

endlocal
