view: vmware_summary_object_data {
  sql_table_name: public.vmware_summary_object_data ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: being_processed_cnt {
    type: number
    sql: ${TABLE}.being_processed_cnt ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.data_type ;;
  }

  dimension: has_error {
    type: yesno
    sql: ${TABLE}.has_error ;;
  }

  dimension: is_visible {
    type: yesno
    sql: ${TABLE}.is_visible ;;
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

  dimension_group: last_updated {
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
    sql: ${TABLE}.last_updated ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: num_forced_restart {
    type: number
    sql: ${TABLE}.num_forced_restart ;;
  }

  dimension: number_of_attempts {
    type: number
    sql: ${TABLE}.number_of_attempts ;;
  }

  dimension: object_id {
    type: string
    sql: ${TABLE}.object_id ;;
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

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  dimension: task_control {
    type: string
    sql: ${TABLE}.task_control ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
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
    drill_fields: [id, table_name, customers.id, customers.name]
  }
}
