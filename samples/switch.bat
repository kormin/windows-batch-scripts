rem Source: http://stackoverflow.com/a/19795694/4955499
@ECHO OFF

SET /P COLOR="Choose a background color (type red, blue or black): "

2>NUL CALL :CASE_%COLOR% # jump to :CASE_red, :CASE_blue, etc.
IF ERRORLEVEL 1 CALL :DEFAULT_CASE # if label doesn't exist

ECHO Done.
EXIT /B

:CASE_red
  COLOR CF
  GOTO END_CASE
:CASE_blue
  COLOR 9F
  GOTO END_CASE
:CASE_black
  COLOR 0F
  GOTO END_CASE
:DEFAULT_CASE
  ECHO Unknown color "%COLOR%"
  GOTO END_CASE
:END_CASE
  VER > NUL # reset ERRORLEVEL
  GOTO :EOF # return from CALL