view: hyperv_vm_name_map {
  sql_table_name: public.hyperv_vm_name_map ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: all_cpu_names {
    type: string
    sql: ${TABLE}.all_cpu_names ;;
  }

  dimension: cpu_vm_name {
    type: string
    sql: ${TABLE}.cpu_vm_name ;;
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

  dimension: memory_vm_name {
    type: string
    sql: ${TABLE}.memory_vm_name ;;
  }

  dimension: nic_vm_name {
    type: string
    sql: ${TABLE}.nic_vm_name ;;
  }

  dimension: vhd_vm_name {
    type: string
    sql: ${TABLE}.vhd_vm_name ;;
  }

  dimension: vm_id {
    type: string
    sql: ${TABLE}.vm_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      cpu_vm_name,
      memory_vm_name,
      nic_vm_name,
      vhd_vm_name,
      customers.id,
      customers.name
    ]
  }
}
