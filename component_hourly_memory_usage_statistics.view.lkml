view: component_hourly_memory_usage_statistics {
  sql_table_name: public.component_hourly_memory_usage_statistics ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: component_id {
    type: number
    sql: ${TABLE}.component_id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.end_time ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.start_time ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
