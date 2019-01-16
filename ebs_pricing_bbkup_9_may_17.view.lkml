view: ebs_pricing_bbkup_9_may_17 {
  sql_table_name: public.ebs_pricing_bbkup_9_may_17 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

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

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: unittype {
    type: string
    sql: ${TABLE}.unittype ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
