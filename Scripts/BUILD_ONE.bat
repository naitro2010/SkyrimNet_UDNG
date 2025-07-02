@echo off
cd /D "%~dp0"
echo **Steping to mode root directory
cd ..
echo **Checking PAPYRUS sources and tools from GitHub
if not exist "PAPYRUS" (echo **Sources not present, clonning from GitHub & git clone https://github.com/naitro2010/PAPYRUS.git) else (echo **PAPYRUS Folder already present, skipping...)
cd PAPYRUS
set /p SCRIPTNAME="Script name (without extension): "
BUILD_SINGLE %SCRIPTNAME%".psc" & PAUSE
