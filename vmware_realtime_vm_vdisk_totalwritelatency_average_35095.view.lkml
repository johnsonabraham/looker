view: vmware_realtime_vm_vdisk_totalwritelatency_average_35095 {
  sql_table_name: public.vmware_realtime_vm_vdisk_totalwritelatency_average_35095 ;;

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

  dimension: host_id {
    type: string
    sql: ${TABLE}.host_id ;;
  }

  dimension: refresh_rate {
    type: number
    sql: ${TABLE}.refresh_rate ;;
  }

  dimension_group: samples_end_timestamp {
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
    sql: ${TABLE}.samples_end_timestamp ;;
  }

  dimension_group: samples_start_timestamp {
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
    sql: ${TABLE}.samples_start_timestamp ;;
  }

  dimension: samples_times {
    type: string
    sql: ${TABLE}.samples_times ;;
  }

  dimension: samples_timestamps_array {
    type: string
    sql: ${TABLE}.samples_timestamps_array ;;
  }

  dimension: samples_values {
    type: string
    sql: ${TABLE}.samples_values ;;
  }

  dimension: samples_values_array {
    type: string
    sql: ${TABLE}.samples_values_array ;;
  }

  dimension_group: time_of_run {
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
    sql: ${TABLE}.time_of_run ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vdisk_id {
    type: string
    sql: ${TABLE}.vdisk_id ;;
  }

  dimension: vm_id {
    type: string
    sql: ${TABLE}.vm_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
