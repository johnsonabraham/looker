view: http_process_name_details {
  sql_table_name: public.http_process_name_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: application_family {
    type: string
    sql: ${TABLE}.application_family ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: details {
    type: string
    sql: ${TABLE}.details ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: impact_on_migration {
    type: number
    sql: ${TABLE}.impact_on_migration ;;
  }

  dimension: is_dr {
    type: yesno
    sql: ${TABLE}.is_dr ;;
  }

  dimension: is_management {
    type: yesno
    sql: ${TABLE}.is_management ;;
  }

  dimension: is_monitoring {
    type: yesno
    sql: ${TABLE}.is_monitoring ;;
  }

  dimension: is_proprietary {
    type: yesno
    sql: ${TABLE}.is_proprietary ;;
  }

  dimension: is_specialized {
    type: yesno
    sql: ${TABLE}.is_specialized ;;
  }

  dimension: likely_to_migrate {
    type: number
    sql: ${TABLE}.likely_to_migrate ;;
  }

  dimension: more_info_url {
    type: string
    sql: ${TABLE}.more_info_url ;;
  }

  dimension: process_name {
    type: string
    sql: ${TABLE}.process_name ;;
  }

  dimension: product_family {
    type: string
    sql: ${TABLE}.product_family ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: quality {
    type: number
    sql: ${TABLE}.quality ;;
  }

  dimension: readiness {
    type: number
    sql: ${TABLE}.readiness ;;
  }

  dimension: suitability {
    type: number
    sql: ${TABLE}.suitability ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      display_name,
      process_name,
      company_name,
      product_name,
      customers.id,
      customers.name,
      web_app_mapping.count
    ]
  }
}
