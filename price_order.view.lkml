view: price_order {
  sql_table_name: public.price_order ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: plan {
    type: string
    sql: ${TABLE}.plan ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: type_ordering {
    type: string
    sql: ${TABLE}.type_ordering ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
