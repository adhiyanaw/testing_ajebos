with base as (

    select *
    from dbt_artifacts_ci_tests.dbt_artifacts_test_commit__fa31b83edc6e6ba2baa333663675d31d6dacd0e3.stg_dbt__models

),

models as (

    select
        model_execution_id,
        command_invocation_id,
        node_id,
        run_started_at,
        database,
        schema,
        name,
        depends_on_nodes,
        package_name,
        path,
        checksum,
        materialization,
        tags,
        meta,
        alias
    from base

)

select * from models