@echo off
SET dir="C:\path\folder"
For /R "$dir" %Y in (*.java)
ECHO fire-ren.java ada?
ECHO Enter Y for yes
ECHO Enter N for no
CHOICE /c YN /m "Yes or No"
:: To rename x.php to y.php
REN C:\x.php C:\y.php
pause

@echo off
SET direktori="C:\path\folder"
SET nama-file= find %direktori% *.java
echo " %nama file%.java ada, diganti namanya (y/t)"
set INPUT=
set /P INPUT=Type input: %=%
If /I "%INPUT%"=="y" goto yes
If /I "%INPUT%"=="t" goto no

:yes
echo jika y, maka input nama baru kemudian diganti
set INPUT=
set /P INPUT=Type input: %=%
REN %direktori% INPUT
pause

:no
echo jika t, maka lanjut ke proses berikutnya
pause

pause