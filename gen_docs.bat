@echo off
set root=%MESON_SOURCE_ROOT%
if "%root%" == "" (set root=%~dp0\..\..)
set docs=%root%\docs\whitebox_docs

:: -a data-uri : embeds images in the document rather than linking to an external file

git describe --abbrev=0 > "%docs%\VERSION"
call asciidoctor -a data-uri --warnings --require asciidoctor-pdf --require rouge --backend pdf   "%docs%\readme.adoc"
call asciidoctor -a data-uri --warnings --require asciidoctor-pdf --require rouge --backend html5 "%docs%\readme.adoc"
