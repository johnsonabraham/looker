view: assessment_type_mapping {
  sql_table_name: public.assessment_type_mapping ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: actual_delivery {
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
    sql: ${TABLE}.actual_delivery_date ;;
  }

  dimension: assessment_type {
    type: string
    sql: ${TABLE}.assessment_type ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: data_status {
    type: string
    sql: ${TABLE}.data_status ;;
  }

  dimension: delivery_id {
    type: number
    sql: ${TABLE}.delivery_id ;;
  }

  dimension_group: expected_delivery {
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
    sql: ${TABLE}.expected_delivery_date ;;
  }

  dimension: is_being_computed {
    type: yesno
    sql: ${TABLE}.is_being_computed ;;
  }

  dimension: is_selectable {
    type: yesno
    sql: ${TABLE}.is_selectable ;;
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

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
