view: vmware_vm_state_events_details {
  sql_table_name: public.vmware_vm_state_events_details ;;

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: device_class_type {
    type: string
    sql: ${TABLE}.device_class_type ;;
  }

  dimension_group: event_created_timestamp {
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
    sql: ${TABLE}.event_created_timestamp ;;
  }

  dimension: event_details_id {
    type: string
    sql: ${TABLE}.event_details_id ;;
  }

  dimension: parent_event_details_id {
    type: string
    sql: ${TABLE}.parent_event_details_id ;;
  }

  dimension: spec_dev_op {
    type: string
    sql: ${TABLE}.spec_dev_op ;;
  }

  dimension: spec_file_op {
    type: string
    sql: ${TABLE}.spec_file_op ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vdisk_file_name {
    type: string
    sql: ${TABLE}.vdisk_file_name ;;
  }

  measure: count {
    type: count
    drill_fields: [vdisk_file_name, customers.id, customers.name]
  }
}
