view: on_off_cache {
  sql_table_name: public.on_off_cache ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: asset_id {
    type: number
    sql: ${TABLE}.asset_id ;;
  }

  dimension: availability_zone {
    type: string
    sql: ${TABLE}.availability_zone ;;
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

  dimension_group: end {
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
    sql: ${TABLE}.end_time ;;
  }

  dimension: growth_factor {
    type: number
    sql: ${TABLE}.growth_factor ;;
  }

  dimension: horizon_in_weeks {
    type: number
    sql: ${TABLE}.horizon_in_weeks ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension: is_vpc {
    type: yesno
    sql: ${TABLE}.is_vpc ;;
  }

  dimension: max_on {
    type: number
    sql: ${TABLE}.max_on ;;
  }

  dimension: min_on {
    type: number
    sql: ${TABLE}.min_on ;;
  }

  dimension: number_on {
    type: string
    sql: ${TABLE}.number_on ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: spot_or_not {
    type: number
    sql: ${TABLE}.spot_or_not ;;
  }

  dimension: total_hours_on {
    type: number
    sql: ${TABLE}.total_hours_on ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
