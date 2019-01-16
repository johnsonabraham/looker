view: server_process_info {
  sql_table_name: public.server_process_info ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: all_command_lines {
    type: string
    sql: ${TABLE}.all_command_lines ;;
  }

  dimension: all_pids {
    type: string
    sql: ${TABLE}.all_pids ;;
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

  dimension: details_id {
    type: number
    sql: ${TABLE}.details_id ;;
  }

  dimension: details_id2 {
    type: string
    sql: ${TABLE}.details_id2 ;;
  }

  dimension: display_application_domain {
    type: string
    sql: ${TABLE}.display_application_domain ;;
  }

  dimension: display_application_family {
    type: string
    sql: ${TABLE}.display_application_family ;;
  }

  dimension: display_company_name {
    type: string
    sql: ${TABLE}.display_company_name ;;
  }

  dimension: display_description {
    type: string
    sql: ${TABLE}.display_description ;;
  }

  dimension: display_product_description {
    type: string
    sql: ${TABLE}.display_product_description ;;
  }

  dimension: display_product_name {
    type: string
    sql: ${TABLE}.display_product_name ;;
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

  dimension: ignore {
    type: yesno
    sql: ${TABLE}.ignore ;;
  }

  dimension: ignore_by_user {
    type: yesno
    sql: ${TABLE}.ignore_by_user ;;
  }

  dimension: ignore_since_duplicate {
    type: yesno
    sql: ${TABLE}.ignore_since_duplicate ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: is_proprietary {
    type: number
    sql: ${TABLE}.is_proprietary ;;
  }

  dimension: is_shown {
    type: yesno
    sql: ${TABLE}.is_shown ;;
  }

  dimension: listening_port {
    type: number
    sql: ${TABLE}.listening_port ;;
  }

  dimension: listening_ports {
    type: string
    sql: ${TABLE}.listening_ports ;;
  }

  dimension: machine_type_2 {
    type: number
    sql: ${TABLE}.machine_type_2 ;;
  }

  dimension: module_name {
    type: string
    sql: ${TABLE}.module_name ;;
  }

  dimension: more_info_url {
    type: string
    sql: ${TABLE}.more_info_url ;;
  }

  dimension: number_of_time_seen {
    type: number
    sql: ${TABLE}.number_of_time_seen ;;
  }

  dimension: old_row_id {
    type: number
    sql: ${TABLE}.old_row_id ;;
  }

  dimension: original_id {
    type: number
    sql: ${TABLE}.original_id ;;
  }

  dimension: os_type {
    type: string
    sql: ${TABLE}.os_type ;;
  }

  dimension: other_ids {
    type: string
    sql: ${TABLE}.other_ids ;;
  }

  dimension: other_info {
    type: string
    sql: ${TABLE}.other_info ;;
  }

  dimension: other_original_ids {
    type: string
    sql: ${TABLE}.other_original_ids ;;
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

  dimension: parent_service_display_name {
    type: string
    sql: ${TABLE}.parent_service_display_name ;;
  }

  dimension: parent_service_name {
    type: string
    sql: ${TABLE}.parent_service_name ;;
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

  dimension: quessed_columns {
    type: string
    sql: ${TABLE}.quessed_columns ;;
  }

  dimension: server_process_name {
    type: string
    sql: ${TABLE}.server_process_name ;;
  }

  dimension: server_process_name_1st {
    type: string
    sql: ${TABLE}.server_process_name_1st ;;
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

  dimension: web_site_info_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.web_site_info_id ;;
  }

  dimension: web_site_info_physical_path {
    type: string
    sql: ${TABLE}.web_site_info_physical_path ;;
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
      process_name,
      parent_process_name,
      server_process_name,
      product_name,
      company_name,
      parent_product_name,
      parent_company_name,
      http_process_name,
      display_company_name,
      display_product_name,
      service_name,
      service_display_name,
      dll_product_name,
      dll_company_name,
      parent_service_name,
      parent_service_display_name,
      module_name,
      customers.id,
      customers.name,
      web_site_info.id,
      web_site_info.site_name,
      web_site_info.dll_name,
      web_site_info.product_name,
      web_site_info.company_name,
      web_site_info.host_name,
      web_app_mapping.count
    ]
  }
}
