@echo off

cd ..\..\
md build\output

xelatex -synctex=1 -interaction=nonstopmode -output-directory=build/output '\input{./articles/event_study.tex}'
copy /Y  build\output\event_study.pdf out\



cd build\win
pause

