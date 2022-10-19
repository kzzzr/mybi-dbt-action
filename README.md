# Github Action for dbt deployment

* Designed to be used with [mybi-dbt-core](https://github.com/kzzzr/mybi-dbt-core) module and dependent projects
* This is a [Docker container action](./Dockerfile)
* Supported adapters: `dbt-postgres`, `dbt-clickhouse` (most recent stable version is installed)
* Action will look for `profiles.yml` in project root by default (configured by ENV `DBT_PROFILES_DIR=.`)
* Action requires `command` input to be executed
* Project directory can be changed by supplying ENV `DBT_PROJECT_DIR` (e.g. to lauch subproject `./integration_tests`)

