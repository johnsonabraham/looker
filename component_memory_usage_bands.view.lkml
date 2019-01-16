view: component_memory_usage_bands {
  sql_table_name: public.component_memory_usage_bands ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: assetid {
    type: number
    value_format_name: id
    sql: ${TABLE}.assetid ;;
  }

  dimension: available {
    type: number
    sql: ${TABLE}.available ;;
  }

  dimension: blue {
    type: number
    sql: ${TABLE}.blue ;;
  }

  dimension: component_id {
    type: number
    sql: ${TABLE}.component_id ;;
  }

  dimension: componentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.componentid ;;
  }

  dimension: customerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.customerid ;;
  }

  dimension: green {
    type: number
    sql: ${TABLE}.green ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension: instance_type_2 {
    type: string
    sql: ${TABLE}.instance_type_2 ;;
  }

  dimension: orange {
    type: number
    sql: ${TABLE}.orange ;;
  }

  dimension: red {
    type: number
    sql: ${TABLE}.red ;;
  }

  dimension: yellow {
    type: number
    sql: ${TABLE}.yellow ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
