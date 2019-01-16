view: component_hourly_statistics_on_dates_to_consider_60 {
  sql_table_name: public.component_hourly_statistics_on_dates_to_consider_60 ;;

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

  dimension: componentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.componentid ;;
  }

  dimension: customerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.customerid ;;
  }

  dimension: date_type {
    type: string
    sql: ${TABLE}.date_type ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension: mean {
    type: number
    sql: ${TABLE}.mean ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: percentile_10 {
    type: number
    sql: ${TABLE}.percentile_10 ;;
  }

  dimension: percentile_100 {
    type: number
    sql: ${TABLE}.percentile_100 ;;
  }

  dimension: percentile_25 {
    type: number
    sql: ${TABLE}.percentile_25 ;;
  }

  dimension: percentile_50 {
    type: number
    sql: ${TABLE}.percentile_50 ;;
  }

  dimension: percentile_75 {
    type: number
    sql: ${TABLE}.percentile_75 ;;
  }

  dimension: percentile_90 {
    type: number
    sql: ${TABLE}.percentile_90 ;;
  }

  dimension: percentile_95 {
    type: number
    sql: ${TABLE}.percentile_95 ;;
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
