view: vmware_virtual_disk_id_map {
  sql_table_name: public.vmware_virtual_disk_id_map ;;

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

  dimension: mount_point {
    type: string
    sql: ${TABLE}.mount_point ;;
  }

  dimension: never_ran {
    type: yesno
    sql: ${TABLE}.never_ran ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vdisk_id {
    type: string
    sql: ${TABLE}.vdisk_id ;;
  }

  dimension: virtual_disk_name {
    type: number
    sql: ${TABLE}.virtual_disk_name ;;
  }

  dimension: virtual_disk_to_mount_confidence {
    type: string
    sql: ${TABLE}.virtual_disk_to_mount_confidence ;;
  }

  dimension: virtual_disk_to_vdisk_confidence {
    type: string
    sql: ${TABLE}.virtual_disk_to_vdisk_confidence ;;
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
