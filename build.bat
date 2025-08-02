@echo off
echo ===================================
echo  Starting Standard Godot Build...
echo ===================================
scons platform=windows target=editor module_mono_enabled=yes
echo.
echo Build complete.
pause