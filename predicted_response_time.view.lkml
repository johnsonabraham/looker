view: predicted_response_time {
  sql_table_name: public.predicted_response_time ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: breaks {
    type: string
    sql: ${TABLE}.breaks ;;
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

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: is_interpolated {
    type: yesno
    sql: ${TABLE}.is_interpolated ;;
  }

  dimension: port_rank {
    type: number
    sql: ${TABLE}.port_rank ;;
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

  dimension: times {
    type: string
    sql: ${TABLE}.times ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
