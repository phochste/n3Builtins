#!/bin/bash

SCRIPT=${PYTHON_SCRIPT:-./create-markdown.py}
SOURCES=${SOURCE_DIRECTORY:-./src}
TEMPLATE=${TEMPLATE_FILE:-./index_TEMPLATE.bs}
OUTFILE=${OUTPUT_FILE:-./index.bs}

if command -v python3 &>/dev/null; then
    python3 ${SCRIPT} ${SOURCES} ${TEMPLATE} ${OUTFILE} 
else
    python ${SCRIPT} ${SOURCES} ${TEMPLATE} ${OUTFILE} 
fi
