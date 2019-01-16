view: vmware_data_lifecycle_email_info {
  sql_table_name: public.vmware_data_lifecycle_email_info ;;

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

  dimension: email_content {
    type: string
    sql: ${TABLE}.email_content ;;
  }

  dimension_group: email {
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
    sql: ${TABLE}.email_date ;;
  }

  dimension: email_subject {
    type: string
    sql: ${TABLE}.email_subject ;;
  }

  dimension: email_type {
    type: string
    sql: ${TABLE}.email_type ;;
  }

  dimension: lifecycle_step_type {
    type: string
    sql: ${TABLE}.lifecycle_step_type ;;
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
