view: predicted_cpu_usage_on_dates_to_consider {
  sql_table_name: public.predicted_cpu_usage_on_dates_to_consider ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: asset_id {
    type: number
    sql: ${TABLE}.asset_id ;;
  }

  dimension: c1_medium_typical_cpu {
    type: number
    sql: ${TABLE}.c1_medium_typical_cpu ;;
  }

  dimension: c1_xlarge_typical_cpu {
    type: number
    sql: ${TABLE}.c1_xlarge_typical_cpu ;;
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

  dimension: date_type {
    type: string
    sql: ${TABLE}.date_type ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: m1_large_best_cpu {
    type: number
    sql: ${TABLE}.m1_large_best_cpu ;;
  }

  dimension: m1_large_typical_cpu {
    type: number
    sql: ${TABLE}.m1_large_typical_cpu ;;
  }

  dimension: m1_large_worst_cpu {
    type: number
    sql: ${TABLE}.m1_large_worst_cpu ;;
  }

  dimension: m1_medium_best_cpu {
    type: number
    sql: ${TABLE}.m1_medium_best_cpu ;;
  }

  dimension: m1_medium_typical_cpu {
    type: number
    sql: ${TABLE}.m1_medium_typical_cpu ;;
  }

  dimension: m1_medium_worst_cpu {
    type: number
    sql: ${TABLE}.m1_medium_worst_cpu ;;
  }

  dimension: m1_small_best_cpu {
    type: number
    sql: ${TABLE}.m1_small_best_cpu ;;
  }

  dimension: m1_small_typical_cpu {
    type: number
    sql: ${TABLE}.m1_small_typical_cpu ;;
  }

  dimension: m1_small_worst_cpu {
    type: number
    sql: ${TABLE}.m1_small_worst_cpu ;;
  }

  dimension: m1_xlarge_best_cpu {
    type: number
    sql: ${TABLE}.m1_xlarge_best_cpu ;;
  }

  dimension: m1_xlarge_typical_cpu {
    type: number
    sql: ${TABLE}.m1_xlarge_typical_cpu ;;
  }

  dimension: m1_xlarge_worst_cpu {
    type: number
    sql: ${TABLE}.m1_xlarge_worst_cpu ;;
  }

  dimension: m2_2xlarge_typical_cpu {
    type: number
    sql: ${TABLE}.m2_2xlarge_typical_cpu ;;
  }

  dimension: m2_4xlarge_typical_cpu {
    type: number
    sql: ${TABLE}.m2_4xlarge_typical_cpu ;;
  }

  dimension: m2_xlarge_typical_cpu {
    type: number
    sql: ${TABLE}.m2_xlarge_typical_cpu ;;
  }

  dimension: m3_2xlarge_typical_cpu {
    type: number
    sql: ${TABLE}.m3_2xlarge_typical_cpu ;;
  }

  dimension: m3_xlarge_typical_cpu {
    type: number
    sql: ${TABLE}.m3_xlarge_typical_cpu ;;
  }

  dimension: observed {
    type: number
    sql: ${TABLE}.observed ;;
  }

  dimension: t1_micro_best_cpu {
    type: number
    sql: ${TABLE}.t1_micro_best_cpu ;;
  }

  dimension: t1_micro_typical_cpu {
    type: number
    sql: ${TABLE}.t1_micro_typical_cpu ;;
  }

  dimension: t1_micro_worst_cpu {
    type: number
    sql: ${TABLE}.t1_micro_worst_cpu ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
