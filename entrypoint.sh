#!/bin/bash -l

# set logging
set -e

banner() {
    echo
    echo "*** $*  ***"
}

# cd to project directory which is ./ by default
cd ${INPUT_PROJECT_DIR:-.} 

# perform actions
banner "Current dbt version:"
dbt --version

banner "Check connection:"
dbt debug

banner "Install dependencies:"
dbt deps

banner "dbt build:"
dbt build

# banner "dbt seed:"
# dbt seed

# banner "dbt run:"
# dbt run

# banner "dbt test:"
# dbt test

# banner "clean up:"
# dbt run-operation "clean_up"
