view: predicted_network_rate {
  sql_table_name: public.predicted_network_rate ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: aggregate {
    type: string
    sql: ${TABLE}.aggregate ;;
  }

  dimension: breaks {
    type: string
    sql: ${TABLE}.breaks ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: device_name {
    type: string
    sql: ${TABLE}.device_name ;;
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

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: interface_name {
    type: string
    sql: ${TABLE}.interface_name ;;
  }

  dimension: is_interpolated {
    type: yesno
    sql: ${TABLE}.is_interpolated ;;
  }

  dimension: network_device {
    type: string
    sql: ${TABLE}.network_device ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
  }

  dimension: times {
    type: string
    sql: ${TABLE}.times ;;
  }

  measure: count {
    type: count
    drill_fields: [id, interface_name, device_name, customers.id, customers.name]
  }
}
