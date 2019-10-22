@ GOTO EndComment


:EndComment

@ ECHO OFF
@ start generate_docx.py

:CheckForFile
IF EXIST "output.docx" GOTO Found

REM File not generated yet, wait for it
TIMEOUT /T 1 >nul
@ GOTO CheckForFile

:Found
@ start convert.bat
