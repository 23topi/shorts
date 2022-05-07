@echo "Bitte einen Namen und Pfad fuer die tracedatei eingeben z.b. c:\trace.etl"

@echo off
Set /p tracedatei=

@ECHO OFF
netsh trace start capture=yes tracefile=%tracedatei% persistent=yes maxsize=4096

@ECHO Wenn Sie das Netzwerkmonitoring/Netzwerkcapturing beenden moechten bitte Enter druecken
PAUSE
netsh trace stop
