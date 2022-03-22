@echo off
title Flip a Coin v0.1

:boot
cls
set heads=0
set tails=0
set rolls=0
set stalemates=0

:startupmessage
cls
color 9f
echo[
echo                                   [ This is an experimental experience. ]
timeout /t 5 /nobreak > NUL
echo                              [ There will probably be glitches. Version 0.1. ]
timeout /t 4 /nobreak > NUL
goto menu

:menu
cls
echo[
echo  ____    ___                                 ____                           
echo /\  _`\ /\_ \    __                         /\  _`\           __            
echo \ \ \L\_\//\ \  /\_\  _____          __     \ \ \/\_\    ___ /\_\    ___    
echo  \ \  _\/ \ \ \ \/\ \/\ '__`\      /'__`\    \ \ \/_/_  / __`\/\ \ /' _ `\  
echo   \ \ \/   \_\ \_\ \ \ \ \L\ \    /\ \L\.\_   \ \ \L\ \/\ \L\ \ \ \/\ \/\ \ 
echo    \ \_\   /\____\\ \_\ \ ,__/    \ \__/.\_\   \ \____/\ \____/\ \_\ \_\ \_\
echo     \/_/   \/____/ \/_/\ \ \/      \/__/\/_/    \/___/  \/___/  \/_/\/_/\/_/
echo                         \ \_\                                               
echo                          \/_/        created by ritz (@enfier)
echo[
echo 1. Flip a Coin
echo 2. View Stats
echo 3. Credits
echo 4. Exit
echo[
set /p "menu=Selected option: "
if "%menu%" equ "1" goto coins
if "%menu%" equ "2" goto stats
if "%menu%" equ "3" goto credits
if "%menu%" equ "4" exit
goto menu

:coins
cls
echo[
echo[
echo       Enter anything to flip the coin.
echo                    ,---.
echo                   ' __O)`
echo                  ( (__/ ))
echo                   .-----,
echo                    `---'
echo     Or, type "back" to go back to the menu.
echo[
set /p "coinmain="
if "%coinmain%" equ "phrase" goto coinflip_sp
if "%coinmain%" equ "back" goto menu
goto coinflip_sp

:coinflip_sp
set /a result=%random% %% 141 + 0
if "%result%" leq "70" goto tails
if "%result%" geq "72" goto heads
if "%result%" equ "71" goto stalemate

:heads
set /a rolls=%rolls%+1
set /a heads=%heads%+1
cls
echo[
echo                 ______________
echo     __,.,---'''''              '''''---..._
echo  ,-'             .....:::''::.:            '`-.
echo '           ...:::.....       '
echo             ''':::'''''       .               ,
echo  '-.._           ''''':::..::':          __,,-
echo  '-.._''`---.....______________.....---''__,,-
echo       ''`---.....______________.....---''
echo[
echo                 You got: Heads!
echo      Enter anything to flip the coin again.
echo      Or, type "back" to go back to the menu.
echo[
set /p "headscoinmain="
if "%headscoinmain%" equ "phrase" goto coinflip_sp
if "%headscoinmain%" equ "back" goto menu
goto coinflip_sp

:tails
set /a rolls=%rolls%+1
set /a tails=%tails%+1
cls
echo[
echo                 ______________
echo     __,.,---'''''              '''''---..._
echo  ,-'             .....:::''::.:            '`-.
echo '           ...:::.....       '
echo             ''':::'''''       .               ,
echo  '-.._           ''''':::..::':          __,,-
echo  '-.._''`---.....______________.....---''__,,-
echo       ''`---.....______________.....---''
echo[
echo                 You got: Tails!
echo      Enter anything to flip the coin again.
echo      Or, type "back" to go back to the menu.
echo[
set /p "tailscoinmain="
if "%tailscoinmain%" equ "phrase" goto coinflip_sp
if "%tailscoinmain%" equ "back" goto menu
goto coinflip_sp

:stalemate
set /a stalemates=%stalemates%+1
set /a tails=%tails%+1
cls
echo[
echo      ________________________________         
echo     /                                "-_          
echo    /      .  I  .                       \          
echo   /      : \ I / :                       \         
echo  /        '-___-'                         \      
echo /_________________________________________ \      
echo      _______I I________________________--""-L 
echo     /       F J                              \ 
echo    /       F   J                              L
echo   /      :'     ':                            F
echo  /        '-___-'                            / 
echo /_________________________________________--"  
echo Somehow, you created a wormhole and got a stalemate.
echo                Good job. I guess.
echo      Enter anything to flip the coin again.
echo      Or, type "back" to go back to the menu.
echo[
set /p "stalematecoinmain="
if "%stalematecoinmain%" equ "phrase" goto coinflip_sp
if "%stalematecoinmain%" equ "back" goto menu
goto coinflip_sp

:stats
cls
echo[
echo  ____    __             __                 __                         
echo /\  _`\ /\ \__         /\ \__  __         /\ \__  __                  
echo \ \,\L\_\ \ ,_\    __  \ \ ,_\/\_\    ____\ \ ,_\/\_\    ___    ____  
echo  \/_\__ \\ \ \/  /'__`\ \ \ \/\/\ \  /',__\\ \ \/\/\ \  /'___\ /',__\ 
echo    /\ \L\ \ \ \_/\ \L\.\_\ \ \_\ \ \/\__, `\\ \ \_\ \ \/\ \__//\__, `\
echo    \ `\____\ \__\ \__/.\_\\ \__\\ \_\/\____/ \ \__\\ \_\ \____\/\____/
echo     \/_____/\/__/\/__/\/_/ \/__/ \/_/\/___/   \/__/ \/_/\/____/\/___/ 
echo                 (resets every time you reboot the game)
echo[
echo Heads: %heads%
echo Tails: %tails%
echo Stalemates: %stalemates%
echo Total Rolls: %rolls%
echo[
set /p "stats="
if "%stats%" equ "sjiefpsofjsepofsffffffffffffff23jo424jpo23jop234jo23oj342jojoo" exit
goto menu     

:credits
cls
echo[
echo  ____                    __      __             
echo /\  _`\                 /\ \  __/\ \__          
echo \ \ \/\_\  _ __    __   \_\ \/\_\ \ ,_\   ____  
echo  \ \ \/_/_/\`'__\/'__`\ /'_` \/\ \ \ \/  /',__\ 
echo   \ \ \L\ \ \ \//\  __//\ \L\ \ \ \ \ \_/\__, `\
echo    \ \____/\ \_\\ \____\ \___,_\ \_\ \__\/\____/
echo     \/___/  \/_/ \/____/\/__,_ /\/_/\/__/\/___/ 
echo[
echo Created by ritz (@enfier / @enfier_)
echo Bugs fixed by StackOverflow
echo Created in a day
echo[
echo Type anything to return to the menu.
set /p "credits="
if "%credits%" equ "skospd" goto menu
goto menu                                         
                                                                      