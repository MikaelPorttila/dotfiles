@echo off

echo Welcome, lets install stuff...
echo .

echo Install Choco

powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n=allowGlobalConfirmation
pause

rem List of apps to install.
echo Install Brave
choco install brave

echo Install VSCode
choco install vscode

echo Install Deno
choco install deno

echo Install Node Version Manager
choco install nvm

echo Install Git Extensions
choco install gitextensions

echo Install Powershell Core
choco install powershell-core

echo Install Discord
choco install discord

rem TODO: (MIKAEL) Fix bunch of dotfiles for this one
echo Install Cmder
choco install cmdermini

echo Install 7zip
choco Install 7zip

rem Make sure all paths are updated post 
call refreshenv