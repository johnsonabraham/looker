view: component_utilization_statistics_for_static_optimization {
  sql_table_name: public.component_utilization_statistics_for_static_optimization ;;

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

  dimension: customerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.customerid ;;
  }

  dimension: instancetype {
    type: string
    sql: ${TABLE}.instancetype ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: num_cpu_at_different_percent_array {
    type: string
    sql: ${TABLE}.num_cpu_at_different_percent_array ;;
  }

  dimension_group: updated_from {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.updated_from ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
