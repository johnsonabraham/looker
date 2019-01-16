view: ignore_times_algorithms {
  sql_table_name: public.ignore_times_algorithms ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: algorithm_id {
    type: number
    sql: ${TABLE}.algorithm_id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
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

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: parameter_1 {
    type: number
    sql: ${TABLE}.parameter_1 ;;
  }

  dimension: parameter_2 {
    type: number
    sql: ${TABLE}.parameter_2 ;;
  }

  dimension: parameter_3 {
    type: number
    sql: ${TABLE}.parameter_3 ;;
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
