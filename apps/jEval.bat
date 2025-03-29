@if (@X)==(@Y) @end /* harmless hybrid line that begins a JScrpt comment

::************ Documentation ***********
:::
:::jEval  JScriptExpression  [/N]
:::jEval  /?
:::
:::  Evaluates a JScript expression and writes the result to stdout.
:::
:::  A newline (CR/LF) is not appended to the result unless the /N
:::  option is used.
:::
:::  The JScript expression should be enclosed in double quotes.
:::
:::  JScript string literals within the expression should be enclosed
:::  in single quotes.
:::
:::  Example:
:::
:::    call jEval "'5/4 = ' + 5/4"
:::
:::  Output:
:::
:::    5/4 = 1.25
:::

::************ Batch portion ***********
@echo off

if "%~1" equ "" (
  call :err "Insufficient arguments"
  exit /b
)
if "%~2" neq "" if /i "%~2" neq "/N" (
  call :err "Invalid option"
  exit /b
)
if "%~1" equ "/?" (
  setlocal enableDelayedExpansion
  for /f "delims=" %%A in ('findstr "^:::" "%~f0"') do (
    set "ln=%%A"
    echo(!ln:~3!
  )
  exit /b
)
cscript //E:JScript //nologo "%~f0" %*
exit /b

:err
>&2 echo ERROR: %~1. Use jeval /? to get help.
exit /b 1


************ JScript portion ***********/
if (WScript.Arguments.Named.Exists("n")) {
  WScript.StdOut.WriteLine(eval(WScript.Arguments.Unnamed(0)));
} else {
  WScript.StdOut.Write(eval(WScript.Arguments.Unnamed(0)));
}
