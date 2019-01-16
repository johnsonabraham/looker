view: web_site_info_old {
  sql_table_name: public.web_site_info_old ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: app_path {
    type: string
    sql: ${TABLE}.app_path ;;
  }

  dimension: app_pool {
    type: string
    sql: ${TABLE}.app_pool ;;
  }

  dimension: binding_info {
    type: string
    sql: ${TABLE}.binding_info ;;
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

  dimension: dll_name {
    type: string
    sql: ${TABLE}.dll_name ;;
  }

  dimension: host_name {
    type: string
    sql: ${TABLE}.host_name ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: physical_path {
    type: string
    sql: ${TABLE}.physical_path ;;
  }

  dimension: port {
    type: number
    sql: ${TABLE}.port ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: server_id {
    type: number
    sql: ${TABLE}.server_id ;;
  }

  dimension: site_name {
    type: string
    sql: ${TABLE}.site_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      host_name,
      company_name,
      product_name,
      dll_name,
      site_name,
      customers.id,
      customers.name
    ]
  }
}
