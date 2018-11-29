FOR /f "delims=," %%a in data/log.txt DO set user=%%a && set password=%%b
IF %user%==%USER_ACC% 
IF %USER_PASSWORD%==%password%
SET AUTH = "true"