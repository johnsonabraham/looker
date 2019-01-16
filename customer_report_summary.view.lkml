view: customer_report_summary {
  sql_table_name: public.customer_report_summary ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: analysis_type {
    type: string
    sql: ${TABLE}.analysis_type ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: delivery_id {
    type: number
    sql: ${TABLE}.delivery_id ;;
  }

  dimension: report_data {
    type: string
    sql: ${TABLE}.report_data ;;
  }

  dimension_group: report_generation {
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
    sql: ${TABLE}.report_generation_date ;;
  }

  dimension: report_name {
    type: string
    sql: ${TABLE}.report_name ;;
  }

  dimension: report_type {
    type: string
    sql: ${TABLE}.report_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, report_name, customers.id, customers.name]
  }
}
