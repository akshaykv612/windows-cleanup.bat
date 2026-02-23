@echo off
color 2
title Windows Quick Clean
echo Starting cleanup...
echo ---------------------------------------

:: 1. Clear Temp Files
echo Cleaning User Temp files...
del /s /f /q %temp%\*.*
rd /s /q %temp%
mkdir %temp%

echo Cleaning System Temp files...
del /s /f /q C:\Windows\Temp\*.*
rd /s /q C:\Windows\Temp
mkdir C:\Windows\Temp

:: 2. Clear Prefetch Data
echo Cleaning Prefetch...
del /s /f /q C:\Windows\Prefetch\*.*

:: 3. Clear DNS Cache
echo Flushing DNS...
ipconfig /flushdns

:: 4. Empty Recycle Bin (Silent)
echo Emptying Recycle Bin...
powershell.exe -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue"

echo ---------------------------------------
echo Cleanup Complete!
timeout 5