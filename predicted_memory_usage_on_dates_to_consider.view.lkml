view: predicted_memory_usage_on_dates_to_consider {
  sql_table_name: public.predicted_memory_usage_on_dates_to_consider ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: asset_id {
    type: number
    sql: ${TABLE}.asset_id ;;
  }

  dimension: c1_medium {
    type: number
    sql: ${TABLE}.c1_medium ;;
  }

  dimension: c1_xlarge {
    type: number
    sql: ${TABLE}.c1_xlarge ;;
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

  dimension: m1_large {
    type: number
    sql: ${TABLE}.m1_large ;;
  }

  dimension: m1_medium {
    type: number
    sql: ${TABLE}.m1_medium ;;
  }

  dimension: m1_small {
    type: number
    sql: ${TABLE}.m1_small ;;
  }

  dimension: m1_xlarge {
    type: number
    sql: ${TABLE}.m1_xlarge ;;
  }

  dimension: m2_2xlarge {
    type: number
    sql: ${TABLE}.m2_2xlarge ;;
  }

  dimension: m2_4xlarge {
    type: number
    sql: ${TABLE}.m2_4xlarge ;;
  }

  dimension: m2_xlarge {
    type: number
    sql: ${TABLE}.m2_xlarge ;;
  }

  dimension: m3_2xlarge {
    type: number
    sql: ${TABLE}.m3_2xlarge ;;
  }

  dimension: m3_xlarge {
    type: number
    sql: ${TABLE}.m3_xlarge ;;
  }

  dimension: observed {
    type: number
    sql: ${TABLE}.observed ;;
  }

  dimension: t1_micro {
    type: number
    sql: ${TABLE}.t1_micro ;;
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
