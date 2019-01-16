view: vmware_worker_queue_table {
  sql_table_name: public.vmware_worker_queue_table ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: being_processed_cnt {
    type: number
    sql: ${TABLE}.being_processed_cnt ;;
  }

  dimension_group: data_updated {
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
    sql: ${TABLE}.data_updated_time ;;
  }

  dimension_group: last_heartbeat {
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
    sql: ${TABLE}.last_heartbeat_time ;;
  }

  dimension_group: last_time_processed {
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
    sql: ${TABLE}.last_time_processed ;;
  }

  dimension: number_of_attempts {
    type: number
    sql: ${TABLE}.number_of_attempts ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension_group: processing_start {
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
    sql: ${TABLE}.processing_start_time ;;
  }

  dimension: task_details1 {
    type: string
    sql: ${TABLE}.task_details1 ;;
  }

  dimension: task_details2 {
    type: string
    sql: ${TABLE}.task_details2 ;;
  }

  dimension: task_details3 {
    type: string
    sql: ${TABLE}.task_details3 ;;
  }

  dimension: task_details4 {
    type: string
    sql: ${TABLE}.task_details4 ;;
  }

  dimension: task_details5 {
    type: string
    sql: ${TABLE}.task_details5 ;;
  }

  dimension: task_details6 {
    type: string
    sql: ${TABLE}.task_details6 ;;
  }

  dimension: task_group_id {
    type: number
    sql: ${TABLE}.task_group_id ;;
  }

  dimension: worker_ip_address {
    type: string
    sql: ${TABLE}.worker_ip_address ;;
  }

  dimension: worker_pid {
    type: number
    value_format_name: id
    sql: ${TABLE}.worker_pid ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
