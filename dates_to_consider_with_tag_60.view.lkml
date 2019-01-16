view: dates_to_consider_with_tag_60 {
  sql_table_name: public.dates_to_consider_with_tag_60 ;;

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

  dimension_group: end_heaviest_day {
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
    sql: ${TABLE}.end_heaviest_day ;;
  }

  dimension_group: end_heavy_day {
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
    sql: ${TABLE}.end_heavy_day ;;
  }

  dimension_group: end_light_day {
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
    sql: ${TABLE}.end_light_day ;;
  }

  dimension_group: end_lightest_day {
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
    sql: ${TABLE}.end_lightest_day ;;
  }

  dimension_group: end_typical_day {
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
    sql: ${TABLE}.end_typical_day ;;
  }

  dimension: inferred_slt {
    type: number
    sql: ${TABLE}.inferred_slt ;;
  }

  dimension: instanceid {
    type: string
    sql: ${TABLE}.instanceid ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: recomended_instance_pricing {
    type: string
    sql: ${TABLE}.recomended_instance_pricing ;;
  }

  dimension_group: start_heaviest_day {
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
    sql: ${TABLE}.start_heaviest_day ;;
  }

  dimension_group: start_heavy_day {
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
    sql: ${TABLE}.start_heavy_day ;;
  }

  dimension_group: start_light_day {
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
    sql: ${TABLE}.start_light_day ;;
  }

  dimension_group: start_lightest_day {
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
    sql: ${TABLE}.start_lightest_day ;;
  }

  dimension_group: start_typical_day {
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
    sql: ${TABLE}.start_typical_day ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
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
