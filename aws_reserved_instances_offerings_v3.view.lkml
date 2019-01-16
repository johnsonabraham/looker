view: aws_reserved_instances_offerings_v3 {
  sql_table_name: public.aws_reserved_instances_offerings_v3 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: availability_zone {
    type: string
    sql: ${TABLE}.availability_zone ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }

  dimension_group: first_time_seen {
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
    sql: ${TABLE}.first_time_seen ;;
  }

  dimension: fixed_price {
    type: number
    sql: ${TABLE}.fixed_price ;;
  }

  dimension: instance_tenancy {
    type: string
    sql: ${TABLE}.instance_tenancy ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension_group: last_time_seen {
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
    sql: ${TABLE}.last_time_seen ;;
  }

  dimension: marketplace {
    type: yesno
    sql: ${TABLE}.marketplace ;;
  }

  dimension: offering_type {
    type: string
    sql: ${TABLE}.offering_type ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}.product_description ;;
  }

  dimension: recurring_charge_amount {
    type: number
    sql: ${TABLE}.recurring_charge_amount ;;
  }

  dimension: reserved_instances_offering_id {
    type: string
    sql: ${TABLE}.reserved_instances_offering_id ;;
  }

  dimension: usage_price {
    type: number
    sql: ${TABLE}.usage_price ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
