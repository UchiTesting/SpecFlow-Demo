@echo off
cd SpecFlowCalculator.Specs\bin\Debug\netcoreapp3.1 2>nul
IF %ERRORLEVEL% NEQ 0 (GOTO :NOTFOUND) ELSE (GOTO :GENLIVINGDOC)


:NotFound
ECHO Some files of folder are not present.
ECHO You can try build and execute SpecFlow test cases from Text Explorer before.
ECHO Retry upon successful build.

GOTO :END

:GenLivingDoc
livingdoc test-assembly SpecFlowCalculator.Specs.dll -t TestExecution.json


:END
PAUSE