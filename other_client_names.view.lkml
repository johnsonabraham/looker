view: other_client_names {
  sql_table_name: public.other_client_names ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.client_id ;;
  }

  dimension: client_process_name {
    type: string
    sql: ${TABLE}.client_process_name ;;
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

  dimension: details_id {
    type: number
    sql: ${TABLE}.details_id ;;
  }

  dimension: dll_company_name {
    type: string
    sql: ${TABLE}.dll_company_name ;;
  }

  dimension: dll_description {
    type: string
    sql: ${TABLE}.dll_description ;;
  }

  dimension: dll_path {
    type: string
    sql: ${TABLE}.dll_path ;;
  }

  dimension: dll_product_name {
    type: string
    sql: ${TABLE}.dll_product_name ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: number_of_time_seen {
    type: number
    sql: ${TABLE}.number_of_time_seen ;;
  }

  dimension: parent_company_name {
    type: string
    sql: ${TABLE}.parent_company_name ;;
  }

  dimension: parent_description {
    type: string
    sql: ${TABLE}.parent_description ;;
  }

  dimension: parent_path {
    type: string
    sql: ${TABLE}.parent_path ;;
  }

  dimension: parent_process_cmdline {
    type: string
    sql: ${TABLE}.parent_process_cmdline ;;
  }

  dimension: parent_process_name {
    type: string
    sql: ${TABLE}.parent_process_name ;;
  }

  dimension: parent_product_name {
    type: string
    sql: ${TABLE}.parent_product_name ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: process_cmdline {
    type: string
    sql: ${TABLE}.process_cmdline ;;
  }

  dimension: process_name {
    type: string
    sql: ${TABLE}.process_name ;;
  }

  dimension: process_name_from_netstat {
    type: string
    sql: ${TABLE}.process_name_from_netstat ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: service_display_name {
    type: string
    sql: ${TABLE}.service_display_name ;;
  }

  dimension: service_name {
    type: string
    sql: ${TABLE}.service_name ;;
  }

  dimension_group: time_first_seen {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.time_first_seen ;;
  }

  dimension_group: time_last_seen {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.time_last_seen ;;
  }

  dimension: which_details {
    type: string
    sql: ${TABLE}.which_details ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      parent_company_name,
      dll_company_name,
      dll_product_name,
      service_display_name,
      service_name,
      process_name,
      parent_process_name,
      client_process_name,
      product_name,
      company_name,
      parent_product_name,
      customers.id,
      customers.name
    ]
  }
}
