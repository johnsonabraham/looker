view: group_details {
  sql_table_name: public.group_details ;;

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

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }

  dimension: infrastructure_id {
    type: string
    sql: ${TABLE}.infrastructure_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, group_name, customers.id, customers.name]
  }
}
