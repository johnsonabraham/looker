view: process_name_details {
  sql_table_name: public.process_name_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: application_domain {
    type: string
    sql: ${TABLE}.application_domain ;;
  }

  dimension: application_family {
    type: string
    sql: ${TABLE}.application_family ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: connection_observed {
    type: yesno
    sql: ${TABLE}.connection_observed ;;
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

  dimension: edge_info {
    type: string
    sql: ${TABLE}.edge_info ;;
  }

  dimension: impact_on_migration {
    type: number
    sql: ${TABLE}.impact_on_migration ;;
  }

  dimension: is_client {
    type: yesno
    sql: ${TABLE}.is_client ;;
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

  dimension: is_server {
    type: yesno
    sql: ${TABLE}.is_server ;;
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

  dimension: os_company_name {
    type: string
    sql: ${TABLE}.os_company_name ;;
  }

  dimension: os_description {
    type: string
    sql: ${TABLE}.os_description ;;
  }

  dimension: os_product_name {
    type: string
    sql: ${TABLE}.os_product_name ;;
  }

  dimension: os_type {
    type: string
    sql: ${TABLE}.os_type ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: port {
    type: number
    sql: ${TABLE}.port ;;
  }

  dimension: process_name {
    type: string
    sql: ${TABLE}.process_name ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}.product_description ;;
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

  dimension: role_details {
    type: string
    sql: ${TABLE}.role_details ;;
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
      os_company_name,
      display_name,
      company_name,
      product_name,
      os_product_name,
      process_name,
      customers.id,
      customers.name
    ]
  }
}
