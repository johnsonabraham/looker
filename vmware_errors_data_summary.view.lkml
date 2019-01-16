view: vmware_errors_data_summary {
  sql_table_name: public.vmware_errors_data_summary ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: errors_count {
    type: number
    sql: ${TABLE}.errors_count ;;
  }

  dimension: errors_full_text {
    type: string
    sql: ${TABLE}.errors_full_text ;;
  }

  dimension: process_type {
    type: string
    sql: ${TABLE}.process_type ;;
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
