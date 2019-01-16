view: aws_reserved_rate_plan_v3_raw {
  sql_table_name: public.aws_reserved_rate_plan_v3_raw ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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
    drill_fields: [id]
  }
}
