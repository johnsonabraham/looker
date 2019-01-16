view: web_app_mapping {
  sql_table_name: public.web_app_mapping ;;

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

  dimension: http_process_name_details_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.http_process_name_details_id ;;
  }

  dimension: server_process_info_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.server_process_info_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      customers.id,
      customers.name,
      server_process_info.id,
      server_process_info.process_name,
      server_process_info.parent_process_name,
      server_process_info.server_process_name,
      server_process_info.product_name,
      server_process_info.company_name,
      server_process_info.parent_product_name,
      server_process_info.parent_company_name,
      server_process_info.http_process_name,
      server_process_info.display_company_name,
      server_process_info.display_product_name,
      server_process_info.service_name,
      server_process_info.service_display_name,
      server_process_info.dll_product_name,
      server_process_info.dll_company_name,
      server_process_info.parent_service_name,
      server_process_info.parent_service_display_name,
      server_process_info.module_name,
      http_process_name_details.display_name,
      http_process_name_details.process_name,
      http_process_name_details.id,
      http_process_name_details.company_name,
      http_process_name_details.product_name
    ]
  }
}
