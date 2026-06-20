@echo off
setlocal

cd /d "%~dp0"
set "VENV_PYTHON=%CD%\.venv\Scripts\python.exe"

echo Starting PlayAural Server...
echo.

where uv >nul 2>nul
if not errorlevel 1 (
    echo Synchronizing server environment with uv, including dev/test dependencies...
    uv sync --extra dev
    if errorlevel 1 (
        echo.
        echo ERROR: Failed to synchronize the server environment with uv.
        set "EXIT_CODE=1"
        goto finish
    )

    echo.
    echo Server environment is ready. Launching PlayAural...
    echo.
    uv run --extra dev python main.py %*
    set "EXIT_CODE=%ERRORLEVEL%"
    goto finish
)

echo uv was not found on PATH. Falling back to local .venv setup with pip.
echo.

call :ensure_pip_environment
if errorlevel 1 (
    set "EXIT_CODE=1"
    goto finish
)

echo.
echo Server environment is ready. Launching PlayAural...
echo.
"%VENV_PYTHON%" main.py %*
set "EXIT_CODE=%ERRORLEVEL%"

:finish
echo.
if not "%EXIT_CODE%"=="0" (
    echo Server exited with code %EXIT_CODE%.
)
pause
exit /b %EXIT_CODE%

:ensure_pip_environment
if not exist "%VENV_PYTHON%" (
    echo Creating virtual environment in %CD%\.venv
    call :create_venv
    if errorlevel 1 exit /b 1
)

echo Installing server runtime and dev/test dependencies...
"%VENV_PYTHON%" -m pip --version >nul 2>nul
if errorlevel 1 (
    "%VENV_PYTHON%" -m ensurepip --upgrade
    if errorlevel 1 exit /b 1
)

"%VENV_PYTHON%" -m pip --disable-pip-version-check install -r requirements-dev.txt
exit /b %ERRORLEVEL%

:create_venv
where py >nul 2>nul
if not errorlevel 1 (
    py -3.11 -m venv .venv
    if not errorlevel 1 exit /b 0

    py -3 -m venv .venv
    if not errorlevel 1 exit /b 0
)

where python >nul 2>nul
if not errorlevel 1 (
    python -m venv .venv
    if not errorlevel 1 exit /b 0
)

echo ERROR: Could not create a Python virtual environment.
echo Install Python 3.11 or newer, then run this script again.
exit /b 1
