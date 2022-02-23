@echo off
set root=%MESON_SOURCE_ROOT%
if "%root%" == "" (set root=.)
set docs=%root%\docs\whitebox_docs

git describe --abbrev=0 > %docs%\VERSION
call asciidoctor --warnings --require asciidoctor-pdf --require rouge --backend pdf   %docs%\readme.adoc
call asciidoctor --warnings --require asciidoctor-pdf --require rouge --backend html5 %docs%\readme.adoc
