view: client_data_rate {
  sql_table_name: public.client_data_rate ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accumulated_recv_avg_rate_byte_per_sec {
    type: number
    sql: ${TABLE}.accumulated_recv_avg_rate_byte_per_sec ;;
  }

  dimension: accumulated_recv_peak_rate_byte_per_sec {
    type: number
    sql: ${TABLE}.accumulated_recv_peak_rate_byte_per_sec ;;
  }

  dimension: accumulated_sent_avg_rate_byte_per_sec {
    type: number
    sql: ${TABLE}.accumulated_sent_avg_rate_byte_per_sec ;;
  }

  dimension: accumulated_sent_peak_rate_byte_per_sec {
    type: number
    sql: ${TABLE}.accumulated_sent_peak_rate_byte_per_sec ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.client_id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: recv_avg_rate_byte_per_sec {
    type: number
    sql: ${TABLE}.recv_avg_rate_byte_per_sec ;;
  }

  dimension: recv_peak_rate_byte_per_sec {
    type: number
    sql: ${TABLE}.recv_peak_rate_byte_per_sec ;;
  }

  dimension: recv_rate_byte_per_sec {
    type: string
    sql: ${TABLE}.recv_rate_byte_per_sec ;;
  }

  dimension: recv_time {
    type: string
    sql: ${TABLE}.recv_time ;;
  }

  dimension: sent_avg_rate_byte_per_sec {
    type: number
    sql: ${TABLE}.sent_avg_rate_byte_per_sec ;;
  }

  dimension: sent_peak_rate_byte_per_sec {
    type: number
    sql: ${TABLE}.sent_peak_rate_byte_per_sec ;;
  }

  dimension: sent_rate_byte_per_sec {
    type: string
    sql: ${TABLE}.sent_rate_byte_per_sec ;;
  }

  dimension: sent_time {
    type: string
    sql: ${TABLE}.sent_time ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name, client_process_info.count]
  }
}
