view: node_recommendation {
  sql_table_name: public.node_recommendation ;;

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

  dimension: cpu_provisioning_status {
    type: string
    sql: ${TABLE}.cpu_provisioning_status ;;
  }

  dimension: current_type {
    type: string
    sql: ${TABLE}.current_type ;;
  }

  dimension: customerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.customerid ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension: memory_provisioning_status {
    type: string
    sql: ${TABLE}.memory_provisioning_status ;;
  }

  dimension: overall_provisioning_status {
    type: string
    sql: ${TABLE}.overall_provisioning_status ;;
  }

  dimension: recommended_type {
    type: string
    sql: ${TABLE}.recommended_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
