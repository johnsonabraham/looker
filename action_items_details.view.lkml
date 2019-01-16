view: action_items_details {
  sql_table_name: public.action_items_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action_help {
    type: string
    sql: ${TABLE}.action_help ;;
  }

  dimension: generic_performance_impact {
    type: string
    sql: ${TABLE}.generic_performance_impact ;;
  }

  dimension: generic_security_impact {
    type: string
    sql: ${TABLE}.generic_security_impact ;;
  }

  dimension: indicators {
    type: string
    sql: ${TABLE}.indicators ;;
  }

  dimension: metric_cost {
    type: yesno
    sql: ${TABLE}.metric_cost ;;
  }

  dimension: metric_performance {
    type: yesno
    sql: ${TABLE}.metric_performance ;;
  }

  dimension: metric_storage {
    type: yesno
    sql: ${TABLE}.metric_storage ;;
  }

  dimension: metrie_security {
    type: yesno
    sql: ${TABLE}.metrie_security ;;
  }

  dimension: seq_id {
    type: number
    sql: ${TABLE}.seq_id ;;
  }

  dimension: submetric {
    type: string
    sql: ${TABLE}.submetric ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
