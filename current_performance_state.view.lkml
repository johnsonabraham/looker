view: current_performance_state {
  sql_table_name: public.current_performance_state ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: current_instance_speed {
    type: string
    sql: ${TABLE}.current_instance_speed ;;
  }

  dimension: current_instance_type {
    type: string
    sql: ${TABLE}.current_instance_type ;;
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

  dimension: instanceid {
    type: string
    sql: ${TABLE}.instanceid ;;
  }

  dimension: memory_provisioning_state {
    type: string
    sql: ${TABLE}.memory_provisioning_state ;;
  }

  dimension: overall_provisioning_state {
    type: string
    sql: ${TABLE}.overall_provisioning_state ;;
  }

  dimension: recommended_instance_type {
    type: string
    sql: ${TABLE}.recommended_instance_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
