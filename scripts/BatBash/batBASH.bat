
SET AUTH = false

:initial
	SET USER_ACC = "%1"
	SET USER_PASSWORD = "%2"
	CALL services/auth_service.bat %USER_ACC% %USER_PASSWORD%
	IF "%AUTH%"=="true" 
		GOTO :MAIN
	ELSE GOTO :END
goto :END

:MAIN
echo worked

:END