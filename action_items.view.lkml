view: action_items {
  sql_table_name: public.action_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action_details {
    type: string
    sql: ${TABLE}.action_details ;;
  }

  dimension: action_id {
    type: number
    sql: ${TABLE}.action_id ;;
  }

  dimension: asset_id {
    type: number
    sql: ${TABLE}.asset_id ;;
  }

  dimension: component_id {
    type: number
    sql: ${TABLE}.component_id ;;
  }

  dimension: cost_impact {
    type: number
    sql: ${TABLE}.cost_impact ;;
  }

  dimension: current_instance_type {
    type: string
    sql: ${TABLE}.current_instance_type ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: initial_plan_id {
    type: number
    sql: ${TABLE}.initial_plan_id ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension_group: lastupdated {
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
    sql: ${TABLE}.lastupdated ;;
  }

  dimension: object_id {
    type: string
    sql: ${TABLE}.object_id ;;
  }

  dimension: object_type {
    type: string
    sql: ${TABLE}.object_type ;;
  }

  dimension: performance_impact {
    type: string
    sql: ${TABLE}.performance_impact ;;
  }

  dimension: performance_scope {
    type: string
    sql: ${TABLE}.performance_scope ;;
  }

  dimension: plan_id {
    type: number
    sql: ${TABLE}.plan_id ;;
  }

  dimension: recommended_instance_type {
    type: string
    sql: ${TABLE}.recommended_instance_type ;;
  }

  dimension: security_impact {
    type: string
    sql: ${TABLE}.security_impact ;;
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: slt_deviation {
    type: number
    sql: ${TABLE}.slt_deviation ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
