view: vcenter_error_summary {
  sql_table_name: public.vcenter_error_summary ;;

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

  dimension: error_name {
    type: string
    sql: ${TABLE}.error_name ;;
  }

  dimension: number_of_times_observed {
    type: number
    sql: ${TABLE}.number_of_times_observed ;;
  }

  measure: count {
    type: count
    drill_fields: [id, error_name, customers.id, customers.name]
  }
}
