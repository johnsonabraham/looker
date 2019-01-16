view: predicted_gp_ssd_bucket {
  sql_table_name: public.predicted_gp_ssd_bucket ;;

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

  dimension: device_name {
    type: string
    sql: ${TABLE}.device_name ;;
  }

  dimension: disk_capacity {
    type: number
    sql: ${TABLE}.disk_capacity ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: number_volumes {
    type: number
    sql: ${TABLE}.number_volumes ;;
  }

  dimension: times {
    type: string
    sql: ${TABLE}.times ;;
  }

  measure: count {
    type: count
    drill_fields: [id, device_name, customers.id, customers.name]
  }
}
