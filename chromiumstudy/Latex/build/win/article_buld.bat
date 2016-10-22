@echo off

cd ..\..\
xelatex -synctex=1 -interaction=nonstopmode -output-directory=build/output ./articles/event_study.tex
copy /Y  build\output\event_study.pdf out\
cd build\win
