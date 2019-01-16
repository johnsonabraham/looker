view: vmware_triggered_inventory_log {
  sql_table_name: public.vmware_triggered_inventory_log ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: action_message {
    type: string
    sql: ${TABLE}.action_message ;;
  }

  dimension: action_status {
    type: string
    sql: ${TABLE}.action_status ;;
  }

  dimension: customer_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: localid {
    type: number
    value_format_name: id
    sql: ${TABLE}.localid ;;
  }

  dimension_group: time_of_action {
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
    sql: ${TABLE}.time_of_action ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
