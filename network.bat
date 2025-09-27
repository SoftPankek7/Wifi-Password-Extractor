@echo off
cls && echo NETWORK PASSWORD FINDER && netsh wlan show profiles && set /P network=Network Profile:  
cls && echo Here is the Networking Key (If it says "key index", there is no key.):  && netsh wlan show profile name="%network%" key=clear | findstr Key && pause && cls