view: component_current_performance_state {
  sql_table_name: public.component_current_performance_state ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: assetid {
    type: number
    value_format_name: id
    sql: ${TABLE}.assetid ;;
  }

  dimension: componentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.componentid ;;
  }

  dimension: cpu_provisioning_state {
    type: string
    sql: ${TABLE}.cpu_provisioning_state ;;
  }

  dimension: cpu_state_map {
    type: string
    sql: ${TABLE}.cpu_state_map ;;
  }

  dimension: current_cpu_utilization {
    type: number
    sql: ${TABLE}.current_cpu_utilization ;;
  }

  dimension: current_instance_type {
    type: string
    sql: ${TABLE}.current_instance_type ;;
  }

  dimension: current_memory_usage_max {
    type: number
    sql: ${TABLE}.current_memory_usage_max ;;
  }

  dimension: current_memory_usage_p95 {
    type: number
    sql: ${TABLE}.current_memory_usage_p95 ;;
  }

  dimension: current_memory_utilization {
    type: number
    sql: ${TABLE}.current_memory_utilization ;;
  }

  dimension: customerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.customerid ;;
  }

  dimension: diskio_provisioning_state {
    type: string
    sql: ${TABLE}.diskio_provisioning_state ;;
  }

  dimension: hourly_rate {
    type: number
    sql: ${TABLE}.hourly_rate ;;
  }

  dimension: memory_provisioning_state {
    type: string
    sql: ${TABLE}.memory_provisioning_state ;;
  }

  dimension: normalized_hourly_rate {
    type: number
    sql: ${TABLE}.normalized_hourly_rate ;;
  }

  dimension: overall_provisioning_state {
    type: string
    sql: ${TABLE}.overall_provisioning_state ;;
  }

  dimension: recommended_instance_type {
    type: string
    sql: ${TABLE}.recommended_instance_type ;;
  }

  dimension: upfront_cost {
    type: number
    sql: ${TABLE}.upfront_cost ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
