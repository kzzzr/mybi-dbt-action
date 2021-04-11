#!/bin/sh -l

# set logging
set -ex

# cd to project directory which is ./ by default
cd ${INPUT_PROJECT_DIR:-.} 

# perform actions
echo "dbt --version" && dbt --version
echo "dbt debug" && dbt debug
echo "dbt deps" && dbt deps
echo "dbt seed" && dbt seed
echo "dbt run" && dbt run
echo "dbt test" && dbt test
echo 'dbt run-operation "clean_up"' && dbt run-operation "clean_up"