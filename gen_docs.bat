@echo off
set root=%MESON_SOURCE_ROOT%
if "%root%" == "" (set root=.)
git describe --abbrev=0 > docs\whitebox_docs\VERSION
asciidoctor --warnings --require asciidoctor-pdf --require rouge --backend pdf   %root%\docs\whitebox_docs\readme.adoc
asciidoctor --warnings --require asciidoctor-pdf --require rouge --backend html5 %root%\docs\whitebox_docs\readme.adoc
