with base as (

    select *
    from dbt_artifacts_ci_tests.dbt_artifacts_test_commit__0378fead257544898c29fb3ee9620c75b3b7a9cf.stg_dbt__seed_executions

),

seed_executions as (

    select
        seed_execution_id,
        command_invocation_id,
        node_id,
        run_started_at,
        was_full_refresh,
        thread_id,
        status,
        compile_started_at,
        query_completed_at,
        total_node_runtime,
        rows_affected,
        materialization,
        schema,
        name,
        alias,
        message
    from base

)

select * from seed_executions