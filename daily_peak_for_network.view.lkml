view: daily_peak_for_network {
  sql_table_name: public.daily_peak_for_network ;;

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

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: instanceid {
    type: string
    sql: ${TABLE}.instanceid ;;
  }

  dimension: network_utilization {
    type: number
    sql: ${TABLE}.network_utilization ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
