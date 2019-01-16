view: histogram_cpu_utilization {
  sql_table_name: public.histogram_cpu_utilization ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension_group: last_data {
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
    sql: ${TABLE}.last_data_time ;;
  }

  dimension_group: last_date {
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
    sql: ${TABLE}.last_date_time ;;
  }

  dimension: number_of_bins {
    type: number
    sql: ${TABLE}.number_of_bins ;;
  }

  dimension: number_of_elements {
    type: number
    sql: ${TABLE}.number_of_elements ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
