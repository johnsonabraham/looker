view: machine_info {
  sql_table_name: public.machine_info ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: asset_id {
    type: number
    sql: ${TABLE}.asset_id ;;
  }

  dimension: asset_name {
    type: string
    sql: ${TABLE}.asset_name ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }

  dimension: has_bursty_iops {
    type: yesno
    sql: ${TABLE}.has_bursty_iops ;;
  }

  dimension: has_database {
    type: yesno
    sql: ${TABLE}.has_database ;;
  }

  dimension: host_name {
    type: string
    sql: ${TABLE}.host_name ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: instance_id_of_vm {
    type: string
    sql: ${TABLE}.instance_id_of_vm ;;
  }

  dimension: ip_addresses {
    type: string
    sql: ${TABLE}.ip_addresses ;;
  }

  dimension: is_autoscalable {
    type: yesno
    sql: ${TABLE}.is_autoscalable ;;
  }

  dimension: machine_roles {
    type: string
    sql: ${TABLE}.machine_roles ;;
  }

  dimension: machine_type {
    type: number
    sql: ${TABLE}.machine_type ;;
  }

  dimension: num_clients_others_group {
    type: number
    sql: ${TABLE}.num_clients_others_group ;;
  }

  dimension: num_clients_same_asset {
    type: number
    sql: ${TABLE}.num_clients_same_asset ;;
  }

  dimension: num_clients_same_group {
    type: number
    sql: ${TABLE}.num_clients_same_group ;;
  }

  dimension: num_customer_clients {
    type: number
    sql: ${TABLE}.num_customer_clients ;;
  }

  dimension: num_customer_servers {
    type: number
    sql: ${TABLE}.num_customer_servers ;;
  }

  dimension: num_external_clients {
    type: number
    sql: ${TABLE}.num_external_clients ;;
  }

  dimension: num_external_servers {
    type: number
    sql: ${TABLE}.num_external_servers ;;
  }

  dimension: num_proprietary_client_processes {
    type: number
    sql: ${TABLE}.num_proprietary_client_processes ;;
  }

  dimension: num_proprietary_server_processes {
    type: number
    sql: ${TABLE}.num_proprietary_server_processes ;;
  }

  dimension: num_servers_other_group {
    type: number
    sql: ${TABLE}.num_servers_other_group ;;
  }

  dimension: num_servers_same_asset {
    type: number
    sql: ${TABLE}.num_servers_same_asset ;;
  }

  dimension: num_servers_same_group {
    type: number
    sql: ${TABLE}.num_servers_same_group ;;
  }

  dimension: num_specialized_client_processes {
    type: number
    sql: ${TABLE}.num_specialized_client_processes ;;
  }

  dimension: num_specialized_server_processes {
    type: number
    sql: ${TABLE}.num_specialized_server_processes ;;
  }

  dimension: number_of_client_processes {
    type: number
    sql: ${TABLE}.number_of_client_processes ;;
  }

  dimension: number_of_server_processes {
    type: number
    sql: ${TABLE}.number_of_server_processes ;;
  }

  dimension: number_proprietary_clients {
    type: number
    sql: ${TABLE}.number_proprietary_clients ;;
  }

  dimension: number_proprietary_servers {
    type: number
    sql: ${TABLE}.number_proprietary_servers ;;
  }

  dimension: os_type {
    type: string
    sql: ${TABLE}.os_type ;;
  }

  dimension: public_ip {
    type: string
    sql: ${TABLE}.public_ip ;;
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
      asset_name,
      group_name,
      customers.id,
      customers.name
    ]
  }
}
