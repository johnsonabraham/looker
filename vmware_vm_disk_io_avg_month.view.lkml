view: vmware_vm_disk_io_avg_month {
  sql_table_name: public.vmware_vm_disk_io_avg_month ;;

  dimension: average_reads_per_seconds {
    type: number
    sql: ${TABLE}.average_reads_per_seconds ;;
  }

  dimension: average_writes_per_seconds {
    type: number
    sql: ${TABLE}.average_writes_per_seconds ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: total_ops_sum_per_hour {
    type: number
    sql: ${TABLE}.total_ops_sum_per_hour ;;
  }

  dimension: total_ops_sum_per_month {
    type: number
    sql: ${TABLE}.total_ops_sum_per_month ;;
  }

  dimension: total_ops_sum_per_seconds {
    type: number
    sql: ${TABLE}.total_ops_sum_per_seconds ;;
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
