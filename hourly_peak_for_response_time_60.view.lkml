view: hourly_peak_for_response_time_60 {
  sql_table_name: public.hourly_peak_for_response_time_60 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assetid {
    type: number
    value_format_name: id
    sql: ${TABLE}.assetid ;;
  }

  dimension: c1_medium_typical_cpu {
    type: number
    sql: ${TABLE}.c1_medium_typical_cpu ;;
  }

  dimension: c1_xlarge_typical_cpu {
    type: number
    sql: ${TABLE}.c1_xlarge_typical_cpu ;;
  }

  dimension: customerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.customerid ;;
  }

  dimension: instanceid {
    type: string
    sql: ${TABLE}.instanceid ;;
  }

  dimension: large_best_cpu {
    type: number
    sql: ${TABLE}.large_best_cpu ;;
  }

  dimension: large_typical_cpu {
    type: number
    sql: ${TABLE}.large_typical_cpu ;;
  }

  dimension: large_worst_cpu {
    type: number
    sql: ${TABLE}.large_worst_cpu ;;
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

  dimension: medium_best_cpu {
    type: number
    sql: ${TABLE}.medium_best_cpu ;;
  }

  dimension: medium_typical_cpu {
    type: number
    sql: ${TABLE}.medium_typical_cpu ;;
  }

  dimension: medium_worst_cpu {
    type: number
    sql: ${TABLE}.medium_worst_cpu ;;
  }

  dimension: micro_best_cpu {
    type: number
    sql: ${TABLE}.micro_best_cpu ;;
  }

  dimension: micro_typical_cpu {
    type: number
    sql: ${TABLE}.micro_typical_cpu ;;
  }

  dimension: micro_worst_cpu {
    type: number
    sql: ${TABLE}.micro_worst_cpu ;;
  }

  dimension: observed {
    type: number
    sql: ${TABLE}.observed ;;
  }

  dimension: port_rank {
    type: number
    sql: ${TABLE}.port_rank ;;
  }

  dimension: small_best_cpu {
    type: number
    sql: ${TABLE}.small_best_cpu ;;
  }

  dimension: small_typical_cpu {
    type: number
    sql: ${TABLE}.small_typical_cpu ;;
  }

  dimension: small_worst_cpu {
    type: number
    sql: ${TABLE}.small_worst_cpu ;;
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

  dimension: xlarge_best_cpu {
    type: number
    sql: ${TABLE}.xlarge_best_cpu ;;
  }

  dimension: xlarge_typical_cpu {
    type: number
    sql: ${TABLE}.xlarge_typical_cpu ;;
  }

  dimension: xlarge_worst_cpu {
    type: number
    sql: ${TABLE}.xlarge_worst_cpu ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
