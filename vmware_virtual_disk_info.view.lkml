view: vmware_virtual_disk_info {
  sql_table_name: public.vmware_virtual_disk_info ;;

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

  dimension: estimate_quality {
    type: string
    sql: ${TABLE}.estimate_quality ;;
  }

  dimension: estimated_required_capacity_gb {
    type: number
    sql: ${TABLE}.estimated_required_capacity_gb ;;
  }

  dimension: guest_os_mount_point {
    type: string
    sql: ${TABLE}.guest_os_mount_point ;;
  }

  dimension: guest_tools_installed {
    type: yesno
    sql: ${TABLE}.guest_tools_installed ;;
  }

  dimension: parent_datastore {
    type: string
    sql: ${TABLE}.parent_datastore ;;
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

  dimension: vdisk_capacity {
    type: number
    sql: ${TABLE}.vdisk_capacity ;;
  }

  dimension: vdisk_device_node {
    type: string
    sql: ${TABLE}.vdisk_device_node ;;
  }

  dimension: vdisk_info_completeness {
    type: string
    sql: ${TABLE}.vdisk_info_completeness ;;
  }

  dimension: vdisk_mode_type {
    type: string
    sql: ${TABLE}.vdisk_mode_type ;;
  }

  dimension: vdisk_provisioning_type {
    type: string
    sql: ${TABLE}.vdisk_provisioning_type ;;
  }

  dimension: virtual_disk_name {
    type: string
    sql: ${TABLE}.virtual_disk_name ;;
  }

  dimension: virtual_disk_name_simple {
    type: string
    sql: ${TABLE}.virtual_disk_name_simple ;;
  }

  dimension: vm_id {
    type: string
    sql: ${TABLE}.vm_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, virtual_disk_name, customers.id, customers.name]
  }
}
