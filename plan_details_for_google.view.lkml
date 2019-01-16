view: plan_details_for_google {
  sql_table_name: public.plan_details_for_google ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: base_plan_id {
    type: number
    sql: ${TABLE}.base_plan_id ;;
  }

  dimension: based_on_aws_with_plan_id {
    type: number
    sql: ${TABLE}.based_on_aws_with_plan_id ;;
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

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: display_rank {
    type: number
    sql: ${TABLE}.display_rank ;;
  }

  dimension_group: expected_delivery {
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
    sql: ${TABLE}.expected_delivery_time ;;
  }

  dimension: is_being_computed {
    type: yesno
    sql: ${TABLE}.is_being_computed ;;
  }

  dimension: is_being_processed {
    type: yesno
    sql: ${TABLE}.is_being_processed ;;
  }

  dimension: is_default {
    type: yesno
    sql: ${TABLE}.is_default ;;
  }

  dimension: is_hardware_mapping_plan {
    type: yesno
    sql: ${TABLE}.is_hardware_mapping_plan ;;
  }

  dimension: is_target_plan {
    type: yesno
    sql: ${TABLE}.is_target_plan ;;
  }

  dimension: is_visible {
    type: yesno
    sql: ${TABLE}.is_visible ;;
  }

  dimension: is_visible_always {
    type: yesno
    sql: ${TABLE}.is_visible_always ;;
  }

  dimension: is_working_plan {
    type: yesno
    sql: ${TABLE}.is_working_plan ;;
  }

  dimension: job_id {
    type: number
    sql: ${TABLE}.job_id ;;
  }

  dimension: plan_description {
    type: string
    sql: ${TABLE}.plan_description ;;
  }

  dimension: plan_id {
    type: number
    sql: ${TABLE}.plan_id ;;
  }

  dimension: plan_name {
    type: string
    sql: ${TABLE}.plan_name ;;
  }

  dimension: plan_type {
    type: string
    sql: ${TABLE}.plan_type ;;
  }

  dimension: processed_status {
    type: string
    sql: ${TABLE}.processed_status ;;
  }

  dimension: use_for_landing_page {
    type: yesno
    sql: ${TABLE}.use_for_landing_page ;;
  }

  dimension: user_plan_is_updated_from {
    type: number
    sql: ${TABLE}.user_plan_is_updated_from ;;
  }

  measure: count {
    type: count
    drill_fields: [id, display_name, plan_name, customers.id, customers.name]
  }
}
