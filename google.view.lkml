view: google {
  sql_table_name: public.google ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: hourly_rate_full_lowest_price_with_full_sustained_usage {
    type: number
    sql: ${TABLE}.hourly_rate_full_lowest_price_with_full_sustained_usage ;;
  }

  dimension: hourly_rate_full_price_without_sustained_usage {
    type: number
    sql: ${TABLE}.hourly_rate_full_price_without_sustained_usage ;;
  }

  dimension: hourly_rate_preemptible_price_per_hour {
    type: number
    sql: ${TABLE}.hourly_rate_preemptible_price_per_hour ;;
  }

  dimension: hourly_rate_typical_price {
    type: number
    sql: ${TABLE}.hourly_rate_typical_price ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension_group: last_updated_timestamp {
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
    sql: ${TABLE}.last_updated_timestamp ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
