view: vmware_virtual_disk_to_mount_point_map2 {
  sql_table_name: public.vmware_virtual_disk_to_mount_point_map2 ;;

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

  dimension: guest_tools_installed {
    type: yesno
    sql: ${TABLE}.guest_tools_installed ;;
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

  dimension: never_ran {
    type: yesno
    sql: ${TABLE}.never_ran ;;
  }

  dimension: parent_datastore_extents {
    type: string
    sql: ${TABLE}.parent_datastore_extents ;;
  }

  dimension: quality {
    type: string
    sql: ${TABLE}.quality ;;
  }

  dimension_group: removed {
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
    sql: ${TABLE}.removed_at ;;
  }

  dimension: suitable_for_instance_store {
    type: string
    sql: ${TABLE}.suitable_for_instance_store ;;
  }

  dimension_group: valid_from {
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
    sql: ${TABLE}.valid_from ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vdisk_capacity {
    type: number
    sql: ${TABLE}.vdisk_capacity ;;
  }

  dimension: vdisk_id {
    type: string
    sql: ${TABLE}.vdisk_id ;;
  }

  dimension: vdisk_name_no_snap {
    type: string
    sql: ${TABLE}.vdisk_name_no_snap ;;
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
