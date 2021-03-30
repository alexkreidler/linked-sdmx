#!/bin/bash

docker run --rm -i \
    \
    -v $(
        pwd
    ):/src \
    klakegg/saxon
ls
# /src/scripts/run.sh
# xslt -s:input.xml -xsl:transformer.xslt -o:output.xml
