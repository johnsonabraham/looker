view: vmware_virtual_disk_merges {
  sql_table_name: public.vmware_virtual_disk_merges ;;

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

  dimension: merged_vdisk_name_no_snap_new {
    type: string
    sql: ${TABLE}.merged_vdisk_name_no_snap_new ;;
  }

  dimension: merged_vdisk_name_no_snap_old {
    type: string
    sql: ${TABLE}.merged_vdisk_name_no_snap_old ;;
  }

  dimension_group: transition {
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
    sql: ${TABLE}.transition_time ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
