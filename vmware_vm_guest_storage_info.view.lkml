view: vmware_vm_guest_storage_info {
  sql_table_name: public.vmware_vm_guest_storage_info ;;

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

  dimension: guest_family {
    type: string
    sql: ${TABLE}.guest_family ;;
  }

  dimension: storage_guest_capacity {
    type: number
    sql: ${TABLE}.storage_guest_capacity ;;
  }

  dimension: storage_guest_free {
    type: number
    sql: ${TABLE}.storage_guest_free ;;
  }

  dimension: storage_guest_used {
    type: number
    sql: ${TABLE}.storage_guest_used ;;
  }

  dimension: storage_path {
    type: string
    sql: ${TABLE}.storage_path ;;
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
    drill_fields: [id, customers.id, customers.name]
  }
}
