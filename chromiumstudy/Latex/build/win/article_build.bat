@echo off

cd ..\..\
md build\output

::set /p build_article=you want build which article:

set build_article=devtools

if "%build_article%"=="event" (
	echo build event article
	set build_event_article=yes
)
if "%build_article%"=="process" (
	echo build process article
	set build_process_article=yes
)
if "%build_article%"=="devtools" (
	echo build devtools article
	set build_devtools_article=yes
)
if "%build_article%"=="all" (
	echo build all article
	set build_event_article=yes
	set build_process_article=yes
)

if defined build_event_article (
	xelatex -synctex=1 -interaction=nonstopmode -output-directory=build/output "\input{./articles/event_study.tex}"
	copy /Y  build\output\event_study.pdf out\
)
if defined build_process_article (
	xelatex -synctex=1 -interaction=nonstopmode -output-directory=build/output "\input{./articles/process_study.tex}"
	copy /Y  build\output\process_study.pdf out\
)
if defined build_devtools_article (
	xelatex -synctex=1 -interaction=nonstopmode -output-directory=build/output "\input{./articles/devtools_study.tex}"
	copy /Y  build\output\devtools_study.pdf out\
)

cd build\win

