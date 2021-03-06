view: reserved_rate_plan_v5 {
  sql_table_name: public.reserved_rate_plan_v5 ;;

  dimension_group: lastupdated {
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
    sql: ${TABLE}.lastupdated ;;
  }

  dimension: offering_class {
    type: string
    sql: ${TABLE}.offering_class ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: service {
    type: string
    sql: ${TABLE}.service ;;
  }

  dimension: tenancy {
    type: string
    sql: ${TABLE}.tenancy ;;
  }

  dimension: term {
    type: string
    sql: ${TABLE}.term ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: upfront {
    type: number
    sql: ${TABLE}.upfront ;;
  }

  dimension: utilization {
    type: string
    sql: ${TABLE}.utilization ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
