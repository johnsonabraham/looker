view: uploaded_vcenter_vm_info {
  sql_table_name: public.uploaded_vcenter_vm_info ;;

  dimension: alarm_actions {
    type: string
    sql: ${TABLE}.alarm_actions ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: guest_mem_percentage {
    type: number
    sql: ${TABLE}.guest_mem_percentage ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }

  dimension: host_cpu_mhz {
    type: number
    sql: ${TABLE}.host_cpu_mhz ;;
  }

  dimension: host_mem_mb {
    type: number
    sql: ${TABLE}.host_mem_mb ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: provisioned_space {
    type: string
    sql: ${TABLE}.provisioned_space ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: used_space {
    type: string
    sql: ${TABLE}.used_space ;;
  }

  measure: count {
    type: count
    drill_fields: [name, customers.id, customers.name]
  }
}
