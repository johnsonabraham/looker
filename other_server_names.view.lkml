view: other_server_names {
  sql_table_name: public.other_server_names ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: http_process_name {
    type: string
    sql: ${TABLE}.http_process_name ;;
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

  dimension: server_id {
    type: number
    sql: ${TABLE}.server_id ;;
  }

  dimension: server_process_name {
    type: string
    sql: ${TABLE}.server_process_name ;;
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
      dll_company_name,
      dll_product_name,
      service_display_name,
      service_name,
      http_process_name,
      parent_company_name,
      parent_product_name,
      company_name,
      product_name,
      server_process_name,
      parent_process_name,
      process_name,
      customers.id,
      customers.name
    ]
  }
}
