@echo off
:loop
	git pull --rebase
	git add .
	git commit -m "GitHubLiveService: Update!"
	git push origin main
	timeout /t 3 /nobreak >nul
goto loop
