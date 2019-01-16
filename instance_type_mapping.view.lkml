view: instance_type_mapping {
  sql_table_name: public.instance_type_mapping ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cpu_speed {
    type: string
    sql: ${TABLE}.cpu_speed ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension: instance_type_id {
    type: number
    sql: ${TABLE}.instance_type_id ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
