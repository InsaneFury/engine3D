@echo off

set solutiondir=%~1
set targetdir=%~2

MKDIR "%targetdir%res"
XCOPY "%solutiondir%res" "%targetdir%res" /e /s /y
XCOPY "%solutiondir%Debug\Engine.dll" "%targetdir%" /e /s /y
XCOPY "%solutiondir%\libs\assimp-5.0.1\lib\assimp-vc141-mt.dll" "%targetdir%" /e /s /y
XCOPY "%solutiondir%libs\glew-2.1.0\bin\Release\Win32\glew32.dll" "%targetdir%" /e /s /y