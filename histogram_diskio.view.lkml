view: histogram_diskio {
  sql_table_name: public.histogram_diskio ;;

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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number_of_x_bins {
    type: number
    sql: ${TABLE}.number_of_x_bins ;;
  }

  dimension: number_of_y_bins {
    type: number
    sql: ${TABLE}.number_of_y_bins ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, customers.id, customers.name]
  }
}
