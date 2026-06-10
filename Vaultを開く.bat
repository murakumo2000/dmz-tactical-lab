@echo off
chcp 65001 >nul
set "VAULT=C:\Users\murak\OneDrive\ドキュメント\DMZ\戦術研究所\Vault"
set "OBSIDIAN=%LOCALAPPDATA%\Programs\Obsidian\Obsidian.exe"

if not exist "%VAULT%\README.md" (
  echo Vaultフォルダが見つかりません。
  pause
  exit /b 1
)

if not exist "%OBSIDIAN%" (
  echo Obsidianが見つかりません。
  pause
  exit /b 1
)

REM PowerShellで正しくエンコードしたURIを起動
powershell -NoProfile -Command "$p='C:\Users\murak\OneDrive\ドキュメント\DMZ\戦術研究所\Vault'; $u='obsidian://open?path=' + [uri]::EscapeDataString($p); Start-Process $u"
