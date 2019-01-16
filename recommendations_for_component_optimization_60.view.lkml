view: recommendations_for_component_optimization_60 {
  sql_table_name: public.recommendations_for_component_optimization_60 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: assetid {
    type: number
    value_format_name: id
    sql: ${TABLE}.assetid ;;
  }

  dimension: componentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.componentid ;;
  }

  dimension: current_instance_speed {
    type: string
    sql: ${TABLE}.current_instance_speed ;;
  }

  dimension: customerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.customerid ;;
  }

  dimension: inferred_slt {
    type: number
    sql: ${TABLE}.inferred_slt ;;
  }

  dimension: recomended_instance_pricing {
    type: string
    sql: ${TABLE}.recomended_instance_pricing ;;
  }

  dimension: slt_threshold_for_recommending_c1_medium {
    type: number
    sql: ${TABLE}.slt_threshold_for_recommending_c1_medium ;;
  }

  dimension: slt_threshold_for_recommending_c1_xlarge {
    type: number
    sql: ${TABLE}.slt_threshold_for_recommending_c1_xlarge ;;
  }

  dimension: slt_threshold_for_recommending_large {
    type: number
    sql: ${TABLE}.slt_threshold_for_recommending_large ;;
  }

  dimension: slt_threshold_for_recommending_m2_2xlarge {
    type: number
    sql: ${TABLE}.slt_threshold_for_recommending_m2_2xlarge ;;
  }

  dimension: slt_threshold_for_recommending_m2_xlarge {
    type: number
    sql: ${TABLE}.slt_threshold_for_recommending_m2_xlarge ;;
  }

  dimension: slt_threshold_for_recommending_m3_2xlarge {
    type: number
    sql: ${TABLE}.slt_threshold_for_recommending_m3_2xlarge ;;
  }

  dimension: slt_threshold_for_recommending_m3_4xlarge {
    type: number
    sql: ${TABLE}.slt_threshold_for_recommending_m3_4xlarge ;;
  }

  dimension: slt_threshold_for_recommending_m3_xlarge {
    type: number
    sql: ${TABLE}.slt_threshold_for_recommending_m3_xlarge ;;
  }

  dimension: slt_threshold_for_recommending_medium {
    type: number
    sql: ${TABLE}.slt_threshold_for_recommending_medium ;;
  }

  dimension: slt_threshold_for_recommending_small {
    type: number
    sql: ${TABLE}.slt_threshold_for_recommending_small ;;
  }

  dimension: slt_threshold_for_recommending_xlarge {
    type: number
    sql: ${TABLE}.slt_threshold_for_recommending_xlarge ;;
  }

  dimension_group: updated_from {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.updated_from ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
