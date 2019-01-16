view: vmware_multimounted_disks_to_ignore {
  sql_table_name: public.vmware_multimounted_disks_to_ignore ;;

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

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: scsi_id {
    type: string
    sql: ${TABLE}.scsi_id ;;
  }

  dimension: virtual_disk_name {
    type: string
    sql: ${TABLE}.virtual_disk_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, virtual_disk_name, customers.id, customers.name]
  }
}
