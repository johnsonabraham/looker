view: 1_sample {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: select
        instances.instancename,
        cpu.annual_cost as compute_annual_cost,
        annual_platform_cost as compute_annual_platform_cost,
        instances.customerid as customer_id,
        network_bytes_per_month,
        network.annual_cost as network_annual_cost,
        cpu.plan_id
      from awsinstances instances
      inner join component_list comp
      on instances.instanceid =comp.instance_id
      left join vmware_cpu_mapping_details_v2 cpu
      on cpu.instance_id=instances.instanceid
      left join vmware_network_mapping_details network
      on network.instance_id=instances.instanceid
      and cpu.plan_id=network.plan_id
      where instances.is_visible=true
      ;;
  }

  # Define your dimensions and measures here, like this:

  dimension: customer_id {
    description: "Unique ID"
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: instance_name {
    description: "Instance Name"
    type: string
    sql: ${TABLE}.instancename ;;
  }

  dimension: compute_annual_cost {
    description: "The total annual cost"
    type: number
    sql: ${TABLE}.compute_annual_cost;;
    value_format_name: usd
  }

  dimension: compute_annual_platform_cost {
    description: "Compute annual platform cost"
    type: number
    sql: ${TABLE}.compute_annual_platform_cost ;;
    value_format_name: usd
  }

  dimension: network_bytes_per_month {
    description: "The date when each user last ordered"
    type: number
    sql: ${TABLE}.network_bytes_per_month ;;
  }

  dimension: network_annual_cost {
    description: "The date when each user last ordered"
    type: number
    sql: ${TABLE}.network_annual_cost ;;
    value_format_name: usd
  }

  dimension: plan_id {
    description: "plan id for the record"
    type: number
    sql: ${TABLE}.plan_id ;;
  }

  measure: total_compute_cost{
    type: sum
    sql: ${TABLE}.compute_annual_cost ;;
    value_format_name: usd
  }

  measure: total_network_cost{
    type: sum
    sql: ${TABLE}.network_annual_cost ;;
    value_format_name: usd
  }

  measure: total_nodes {
    type: count
  }
}
