view: overall_component_utilization_60 {
  sql_table_name: public.overall_component_utilization_60 ;;

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

  dimension: customerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.customerid ;;
  }

  dimension: hourly_rate {
    type: number
    sql: ${TABLE}.hourly_rate ;;
  }

  dimension: instancetype {
    type: string
    sql: ${TABLE}.instancetype ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: normalized_hourly_rate {
    type: number
    sql: ${TABLE}.normalized_hourly_rate ;;
  }

  dimension: peak_100 {
    type: number
    sql: ${TABLE}.peak_100 ;;
  }

  dimension: peak_90 {
    type: number
    sql: ${TABLE}.peak_90 ;;
  }

  dimension: peak_95 {
    type: number
    sql: ${TABLE}.peak_95 ;;
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

  dimension: upfront {
    type: number
    sql: ${TABLE}.upfront ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
