view: customer_data_status_for_archiving {
  sql_table_name: public.customer_data_status_for_archiving ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: customer_detected {
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
    sql: ${TABLE}.customer_detected ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: inactive {
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
    sql: ${TABLE}.inactive_time ;;
  }

  dimension: is_completely_archived {
    type: number
    sql: ${TABLE}.is_completely_archived ;;
  }

  dimension: is_inactive {
    type: yesno
    sql: ${TABLE}.is_inactive ;;
  }

  dimension_group: oldest_start {
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
    sql: ${TABLE}.oldest_start_time ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
