@echo off
title Git Auto-Push Tool
echo ========================================
echo        GIT AUTO-PUSH SEDERHANA
echo ========================================

:: Step 1: Git Add
echo [+] Menambahkan perubahan...
git add .

:: Step 2: Masukkan Pesan Commit
set /p msg="[?] Masukkan pesan commit (atau enter untuk 'update'): "
if "%msg%"=="" set msg=update

:: Step 3: Git Commit
echo [+] Melakukan commit dengan pesan: "%msg%"
git commit -m "%msg%"

:: Step 4: Git Push
echo [+] Mengirim ke repository remote (Pushing)...
git push

echo ========================================
echo        SELESAI! SEMUA AMAN.
echo ========================================
pause