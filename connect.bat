@echo off
rem ENTER YOUR LOGIN CREDENTIALS 
set usid=YYBBBXXXX
set password=PASSWDHERE
netsh wlan connect name="VIT2.4G"
timeout 5
curl -d "userId=%usid%&password=%password%&serviceName=ProntoAuthentication&Submit22=Login" -X POST http://phc.prontonetworks.com/cgi-bin/authlogin
