@echo off
git describe --abbrev=0 > docs\whitebox_docs\VERSION
asciidoctor --warnings --require asciidoctor-pdf --require rouge --backend pdf   docs\whitebox_docs\readme.adoc
asciidoctor --warnings --require asciidoctor-pdf --require rouge --backend html5 docs\whitebox_docs\readme.adoc
