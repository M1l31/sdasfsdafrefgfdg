@echo off
:: Elimina los archivos temporales del usuario
del /f /s /q "%temp%\*.*" >nul 2>&1
rd /s /q "%temp%" >nul 2>&1

:: Elimina los archivos temporales del sistema
del /f /s /q "C:\Windows\Temp\*.*" >nul 2>&1
rd /s /q "C:\Windows\Temp" >nul 2>&1

:: Limpia la caché del sistema
del /f /s /q "C:\Users\%username%\AppData\Local\Temp\*.*" >nul 2>&1
rd /s /q "C:\Users\%username%\AppData\Local\Temp" >nul 2>&1

:: Fin del script
echo Todos los archivos temporales han sido eliminados.
pause
