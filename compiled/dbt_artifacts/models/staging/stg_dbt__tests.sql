with base as (

    select *
    from dbt_artifacts_ci_tests.dbt_artifacts_test_commit__fa31b83edc6e6ba2baa333663675d31d6dacd0e3.tests

),

enhanced as (

    select
        
md5(cast(coalesce(cast(command_invocation_id as TEXT), '') || '-' || coalesce(cast(node_id as TEXT), '') as TEXT)) as test_execution_id,
        command_invocation_id,
        node_id,
        run_started_at,
        name,
        depends_on_nodes,
        package_name,
        test_path,
        tags
    from base

)

select * from enhanced