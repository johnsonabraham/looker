view: vmware_virtual_disk_info_v2 {
  sql_table_name: public.vmware_virtual_disk_info_v2 ;;

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

  dimension: parent_datastore_classtype {
    type: string
    sql: ${TABLE}.parent_datastore_classtype ;;
  }

  dimension: parent_datastore_extents {
    type: string
    sql: ${TABLE}.parent_datastore_extents ;;
  }

  dimension: parent_datastore_id {
    type: string
    sql: ${TABLE}.parent_datastore_id ;;
  }

  dimension: parent_datastore_is_ssd {
    type: yesno
    sql: ${TABLE}.parent_datastore_is_ssd ;;
  }

  dimension: parent_datastore_type {
    type: string
    sql: ${TABLE}.parent_datastore_type ;;
  }

  dimension: parent_datastore_uuid {
    type: string
    sql: ${TABLE}.parent_datastore_uuid ;;
  }

  dimension: parent_datastore_version {
    type: string
    sql: ${TABLE}.parent_datastore_version ;;
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

  dimension: vdisk_allow_guest_control {
    type: yesno
    sql: ${TABLE}.vdisk_allow_guest_control ;;
  }

  dimension: vdisk_capacity {
    type: number
    sql: ${TABLE}.vdisk_capacity ;;
  }

  dimension: vdisk_connected {
    type: yesno
    sql: ${TABLE}.vdisk_connected ;;
  }

  dimension: vdisk_controller_key {
    type: number
    sql: ${TABLE}.vdisk_controller_key ;;
  }

  dimension: vdisk_controller_object_supertype {
    type: string
    sql: ${TABLE}.vdisk_controller_object_supertype ;;
  }

  dimension: vdisk_controller_object_type {
    type: string
    sql: ${TABLE}.vdisk_controller_object_type ;;
  }

  dimension: vdisk_device_node {
    type: string
    sql: ${TABLE}.vdisk_device_node ;;
  }

  dimension: vdisk_filename {
    type: string
    sql: ${TABLE}.vdisk_filename ;;
  }

  dimension: vdisk_info_completeness {
    type: string
    sql: ${TABLE}.vdisk_info_completeness ;;
  }

  dimension: vdisk_label {
    type: string
    sql: ${TABLE}.vdisk_label ;;
  }

  dimension: vdisk_lunuuid {
    type: string
    sql: ${TABLE}.vdisk_lunuuid ;;
  }

  dimension: vdisk_mode_type {
    type: string
    sql: ${TABLE}.vdisk_mode_type ;;
  }

  dimension: vdisk_object_type {
    type: string
    sql: ${TABLE}.vdisk_object_type ;;
  }

  dimension: vdisk_provisioning_type {
    type: string
    sql: ${TABLE}.vdisk_provisioning_type ;;
  }

  dimension: vdisk_raw_disk_device_name {
    type: string
    sql: ${TABLE}.vdisk_raw_disk_device_name ;;
  }

  dimension: vdisk_raw_disk_mapping_device_name {
    type: string
    sql: ${TABLE}.vdisk_raw_disk_mapping_device_name ;;
  }

  dimension: vdisk_space_used {
    type: number
    sql: ${TABLE}.vdisk_space_used ;;
  }

  dimension: vdisk_startconnected {
    type: yesno
    sql: ${TABLE}.vdisk_startconnected ;;
  }

  dimension: vdisk_summary {
    type: string
    sql: ${TABLE}.vdisk_summary ;;
  }

  dimension: vdisk_uuid {
    type: string
    sql: ${TABLE}.vdisk_uuid ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      virtual_disk_name,
      vdisk_filename,
      vdisk_raw_disk_mapping_device_name,
      vdisk_raw_disk_device_name,
      customers.id,
      customers.name
    ]
  }
}
