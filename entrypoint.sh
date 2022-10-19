#!/bin/bash -l

# set logging
set -e

banner() {
    echo
    echo "*** $*  ***"
    echo
}

# cd to project directory which is ./ by default
cd ${DBT_PROJECT_DIR:-.} 

# perform actions
banner ${INPUT_COMMAND}
${INPUT_COMMAND}
