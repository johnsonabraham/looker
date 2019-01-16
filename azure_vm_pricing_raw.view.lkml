view: azure_vm_pricing_raw {
  sql_table_name: public.azure_vm_pricing_raw ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}.last_updated ;;
  }

  dimension: meter_name {
    type: string
    sql: ${TABLE}.meter_name ;;
  }

  dimension: meter_rates {
    type: number
    sql: ${TABLE}.meter_rates ;;
  }

  dimension: meter_region {
    type: string
    sql: ${TABLE}.meter_region ;;
  }

  dimension: meter_sub_category {
    type: string
    sql: ${TABLE}.meter_sub_category ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
  }

  measure: count {
    type: count
    drill_fields: [id, meter_name]
  }
}
