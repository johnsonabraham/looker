view: vmware_vm_state_events {
  sql_table_name: public.vmware_vm_state_events ;;

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: device_reconfiguration_related {
    type: yesno
    sql: ${TABLE}.device_reconfiguration_related ;;
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

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: full_formatted_message {
    type: string
    sql: ${TABLE}.full_formatted_message ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vm_id {
    type: string
    sql: ${TABLE}.vm_id ;;
  }

  dimension: vm_state_event {
    type: string
    sql: ${TABLE}.vm_state_event ;;
  }

  measure: count {
    type: count
    drill_fields: [customers.id, customers.name]
  }
}
