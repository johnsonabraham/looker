view: heatbeat_monitor_for_sensu {
  sql_table_name: public.heatbeat_monitor_for_sensu ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ignore {
    type: yesno
    sql: ${TABLE}.ignore ;;
  }

  dimension_group: last_heart_beat {
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
    sql: ${TABLE}.last_heart_beat ;;
  }

  dimension: period_in_seconds {
    type: number
    sql: ${TABLE}.period_in_seconds ;;
  }

  dimension: process_name {
    type: string
    sql: ${TABLE}.process_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, process_name]
  }
}
