view: planning_rules {
  sql_table_name: public.planning_rules ;;

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

  dimension: details1 {
    type: string
    sql: ${TABLE}.details1 ;;
  }

  dimension: is_new {
    type: yesno
    sql: ${TABLE}.is_new ;;
  }

  dimension: last_computed_value {
    type: string
    sql: ${TABLE}.last_computed_value ;;
  }

  dimension: object_id {
    type: string
    sql: ${TABLE}.object_id ;;
  }

  dimension: parameter {
    type: string
    sql: ${TABLE}.parameter ;;
  }

  dimension: plan_id {
    type: number
    sql: ${TABLE}.plan_id ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: scope {
    type: string
    sql: ${TABLE}.scope ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  dimension: value_type {
    type: string
    sql: ${TABLE}.value_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
