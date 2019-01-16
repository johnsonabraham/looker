view: data_processing_state {
  sql_table_name: public.data_processing_state ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: component_id {
    type: number
    sql: ${TABLE}.component_id ;;
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

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: metric_details1 {
    type: string
    sql: ${TABLE}.metric_details1 ;;
  }

  dimension: metric_details2 {
    type: string
    sql: ${TABLE}.metric_details2 ;;
  }

  dimension: metric_details3 {
    type: string
    sql: ${TABLE}.metric_details3 ;;
  }

  dimension: summary_info {
    type: string
    sql: ${TABLE}.summary_info ;;
  }

  dimension: task_control {
    type: string
    sql: ${TABLE}.task_control ;;
  }

  dimension_group: time {
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
    sql: ${TABLE}.time ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
