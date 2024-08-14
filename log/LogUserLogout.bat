@echo off
setlocal enabledelayedexpansion

set "log_file= Here Enter path to your .txt file "

rem Record login time and user
(
    echo %date% %time% - User !USERNAME! logged out
    echo.
) > temp_log.txt

type temp_log.txt >> %log_file%
del temp_log.txt

endlocal
exit /b