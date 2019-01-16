view: component_peak_utilization_with_tag {
  sql_table_name: public.component_peak_utilization_with_tag ;;

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

  dimension: component_id {
    type: number
    sql: ${TABLE}.component_id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension: mean {
    type: number
    sql: ${TABLE}.mean ;;
  }

  dimension: meana {
    type: string
    sql: ${TABLE}.meana ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: peak_100 {
    type: number
    sql: ${TABLE}.peak_100 ;;
  }

  dimension: peak_100a {
    type: string
    sql: ${TABLE}.peak_100a ;;
  }

  dimension: peak_90 {
    type: number
    sql: ${TABLE}.peak_90 ;;
  }

  dimension: peak_90a {
    type: string
    sql: ${TABLE}.peak_90a ;;
  }

  dimension: peak_95 {
    type: number
    sql: ${TABLE}.peak_95 ;;
  }

  dimension: peak_95a {
    type: string
    sql: ${TABLE}.peak_95a ;;
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
