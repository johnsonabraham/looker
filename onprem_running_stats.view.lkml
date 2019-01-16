view: onprem_running_stats {
  sql_table_name: public.onprem_running_stats ;;

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

  dimension: fraction_on {
    type: number
    sql: ${TABLE}.fraction_on ;;
  }

  dimension: fraction_on_and_idle {
    type: number
    value_format_name: id
    sql: ${TABLE}.fraction_on_and_idle ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
