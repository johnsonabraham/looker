view: daily_peak_for_response_time {
  sql_table_name: public.daily_peak_for_response_time ;;

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

  dimension: instance_speed {
    type: string
    sql: ${TABLE}.instance_speed ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension: instanceid {
    type: string
    sql: ${TABLE}.instanceid ;;
  }

  dimension: port_rank {
    type: number
    sql: ${TABLE}.port_rank ;;
  }

  dimension: response_time {
    type: number
    sql: ${TABLE}.response_time ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
