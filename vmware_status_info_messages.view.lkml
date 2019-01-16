view: vmware_status_info_messages {
  sql_table_name: public.vmware_status_info_messages ;;

  dimension: info_code {
    type: number
    sql: ${TABLE}.info_code ;;
  }

  dimension: info_message {
    type: string
    sql: ${TABLE}.info_message ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
