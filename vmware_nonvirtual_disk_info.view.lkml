view: vmware_nonvirtual_disk_info {
  sql_table_name: public.vmware_nonvirtual_disk_info ;;

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

  dimension_group: guest_tools_sample {
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
    sql: ${TABLE}.guest_tools_sample_time ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: mount_point {
    type: string
    sql: ${TABLE}.mount_point ;;
  }

  dimension: mounted_capacity {
    type: number
    sql: ${TABLE}.mounted_capacity ;;
  }

  dimension: mounted_occupancy {
    type: number
    sql: ${TABLE}.mounted_occupancy ;;
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
