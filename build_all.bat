@echo off
echo ===================================
echo  Starting FULL Godot Rebuild...
echo ===================================

echo [1/3] Compiling C++ engine...
scons platform=windows target=editor module_mono_enabled=yes

echo.
echo [2/3] Generating C# glue...
bin\godot.windows.editor.x86_64.mono.exe --headless --generate-mono-glue modules/mono/glue

echo.
echo [3/3] Building C# assemblies...
python modules/mono/build_scripts/build_assemblies.py --godot-output-dir=./bin

echo.
echo Full rebuild complete.
pause