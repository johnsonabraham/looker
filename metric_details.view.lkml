view: metric_details {
  sql_table_name: public.metric_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: asset_id {
    type: number
    sql: ${TABLE}.asset_id ;;
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

  dimension: has_daily {
    type: yesno
    sql: ${TABLE}.has_daily ;;
  }

  dimension: has_hourly {
    type: yesno
    sql: ${TABLE}.has_hourly ;;
  }

  dimension: has_single_day {
    type: yesno
    sql: ${TABLE}.has_single_day ;;
  }

  dimension: has_single_hourly {
    type: yesno
    sql: ${TABLE}.has_single_hourly ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: metric_display_name {
    type: string
    sql: ${TABLE}.metric_display_name ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }

  dimension: plan_id {
    type: number
    sql: ${TABLE}.plan_id ;;
  }

  dimension: show_for_aws {
    type: yesno
    sql: ${TABLE}.show_for_aws ;;
  }

  dimension: show_for_azure {
    type: yesno
    sql: ${TABLE}.show_for_azure ;;
  }

  dimension: show_for_google {
    type: yesno
    sql: ${TABLE}.show_for_google ;;
  }

  dimension: y_axis_label {
    type: string
    sql: ${TABLE}.y_axis_label ;;
  }

  dimension: y_axis_max_val {
    type: number
    sql: ${TABLE}.y_axis_max_val ;;
  }

  dimension: y_axis_min_val {
    type: number
    sql: ${TABLE}.y_axis_min_val ;;
  }

  measure: count {
    type: count
    drill_fields: [id, metric_name, metric_display_name, customers.id, customers.name]
  }
}
