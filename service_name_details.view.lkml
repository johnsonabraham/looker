view: service_name_details {
  sql_table_name: public.service_name_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: quality {
    type: number
    sql: ${TABLE}.quality ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, display_name]
  }
}
