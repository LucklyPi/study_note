@echo off

cd ..\..\
md build\output

set /p build_article=you want build which article:

if "%build_article%"=="event" (
	echo build event article
	set build_event_article=yes
)
if "%build_article%"=="all" (
	echo build all article
	set build_event_article=yes
)

if defined build_event_article (
    xelatex -synctex=1 -interaction=nonstopmode -output-directory=build/output '\def\withtbrowser{}\input{./articles/event_study.tex}'
	copy /Y  build\output\event_study.pdf out\
)

cd build\win
pause

