view: vmware_vm_network_usage_month_5_min {
  sql_table_name: public.vmware_vm_network_usage_month_5_min ;;

  dimension: average_kbytes_rate {
    type: number
    sql: ${TABLE}.average_kbytes_rate ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: total_network_usage_sum_per_day_kbytes {
    type: number
    sql: ${TABLE}.total_network_usage_sum_per_day_kbytes ;;
  }

  dimension: total_network_usage_sum_per_month_kbytes {
    type: number
    sql: ${TABLE}.total_network_usage_sum_per_month_kbytes ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vm_id {
    type: string
    sql: ${TABLE}.vm_id ;;
  }

  measure: count {
    type: count
    drill_fields: [customers.id, customers.name]
  }
}
