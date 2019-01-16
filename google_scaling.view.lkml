view: google_scaling {
  sql_table_name: public.google_scaling ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: component_id {
    type: number
    sql: ${TABLE}.component_id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: ec2_instance_type {
    type: string
    sql: ${TABLE}.ec2_instance_type ;;
  }

  dimension: scale {
    type: number
    sql: ${TABLE}.scale ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
