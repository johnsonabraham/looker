view: jvm_min_memory_usage4 {
  sql_table_name: public.jvm_min_memory_usage4 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: fgct {
    type: number
    sql: ${TABLE}.fgct ;;
  }

  dimension: instanceid {
    type: string
    sql: ${TABLE}.instanceid ;;
  }

  dimension: java_buffer {
    type: number
    sql: ${TABLE}.java_buffer ;;
  }

  dimension: last_fgc_cnt {
    type: number
    sql: ${TABLE}.last_fgc_cnt ;;
  }

  dimension: last_sum_ffgt {
    type: number
    sql: ${TABLE}.last_sum_ffgt ;;
  }

  dimension: last_sum_ygct {
    type: number
    sql: ${TABLE}.last_sum_ygct ;;
  }

  dimension: last_ygc_cnt {
    type: number
    sql: ${TABLE}.last_ygc_cnt ;;
  }

  dimension: last_ygc_time {
    type: number
    sql: ${TABLE}.last_ygc_time ;;
  }

  dimension: min_su {
    type: number
    sql: ${TABLE}.min_su ;;
  }

  dimension: missed_pid_count {
    type: number
    sql: ${TABLE}.missed_pid_count ;;
  }

  dimension: mn {
    type: number
    sql: ${TABLE}.mn ;;
  }

  dimension: newc {
    type: number
    sql: ${TABLE}.newc ;;
  }

  dimension: newmn {
    type: number
    sql: ${TABLE}.newmn ;;
  }

  dimension: newtygc {
    type: number
    sql: ${TABLE}.newtygc ;;
  }

  dimension: newygct {
    type: number
    sql: ${TABLE}.newygct ;;
  }

  dimension: num_ygc {
    type: number
    sql: ${TABLE}.num_ygc ;;
  }

  dimension: oupu {
    type: number
    sql: ${TABLE}.oupu ;;
  }

  dimension: pid {
    type: number
    value_format_name: id
    sql: ${TABLE}.pid ;;
  }

  dimension: processed_state {
    type: number
    sql: ${TABLE}.processed_state ;;
  }

  dimension: required {
    type: number
    sql: ${TABLE}.required ;;
  }

  dimension: sum_tygc {
    type: number
    sql: ${TABLE}.sum_tygc ;;
  }

  dimension: sum_ygct {
    type: number
    sql: ${TABLE}.sum_ygct ;;
  }

  dimension: tfgc {
    type: number
    sql: ${TABLE}.tfgc ;;
  }

  dimension: thisc {
    type: number
    sql: ${TABLE}.thisc ;;
  }

  dimension: thistygc {
    type: number
    sql: ${TABLE}.thistygc ;;
  }

  dimension: thisygct {
    type: number
    sql: ${TABLE}.thisygct ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
