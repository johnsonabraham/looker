view: python_test {
  sql_table_name: public.python_test ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: data_in {
    type: string
    sql: ${TABLE}.data_in ;;
  }

  dimension: data_out {
    type: string
    sql: ${TABLE}.data_out ;;
  }

  dimension: function_to_call {
    type: string
    sql: ${TABLE}.function_to_call ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
