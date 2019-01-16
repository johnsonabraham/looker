view: vmware_vm_system_info {
  sql_table_name: public.vmware_vm_system_info ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cluster_id {
    type: string
    sql: ${TABLE}.cluster_id ;;
  }

  dimension: cluster_name {
    type: string
    sql: ${TABLE}.cluster_name ;;
  }

  dimension: cpu_limit {
    type: number
    sql: ${TABLE}.cpu_limit ;;
  }

  dimension: cpu_reservation {
    type: number
    sql: ${TABLE}.cpu_reservation ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: datacenter_id {
    type: string
    sql: ${TABLE}.datacenter_id ;;
  }

  dimension: datacenter_name {
    type: string
    sql: ${TABLE}.datacenter_name ;;
  }

  dimension: datastores_committed {
    type: number
    sql: ${TABLE}.datastores_committed ;;
  }

  dimension: datastores_provisioned {
    type: number
    sql: ${TABLE}.datastores_provisioned ;;
  }

  dimension: datastores_uncommitted {
    type: number
    sql: ${TABLE}.datastores_uncommitted ;;
  }

  dimension: datastores_unshared {
    type: number
    sql: ${TABLE}.datastores_unshared ;;
  }

  dimension: expandable_reservation {
    type: yesno
    sql: ${TABLE}.expandable_reservation ;;
  }

  dimension: full_folder_path {
    type: string
    sql: ${TABLE}.full_folder_path ;;
  }

  dimension: guest_host_name {
    type: string
    sql: ${TABLE}.guest_host_name ;;
  }

  dimension: guest_os_family {
    type: string
    sql: ${TABLE}.guest_os_family ;;
  }

  dimension: guest_os_id {
    type: string
    sql: ${TABLE}.guest_os_id ;;
  }

  dimension: guest_os_name {
    type: string
    sql: ${TABLE}.guest_os_name ;;
  }

  dimension: guest_state {
    type: string
    sql: ${TABLE}.guest_state ;;
  }

  dimension: host_id {
    type: string
    sql: ${TABLE}.host_id ;;
  }

  dimension: host_name {
    type: string
    sql: ${TABLE}.host_name ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: mac_address {
    type: string
    sql: ${TABLE}.mac_address ;;
  }

  dimension: memory_mb {
    type: number
    sql: ${TABLE}.memory_mb ;;
  }

  dimension: num_cores_per_socket {
    type: number
    sql: ${TABLE}.num_cores_per_socket ;;
  }

  dimension: num_cpus {
    type: number
    sql: ${TABLE}.num_cpus ;;
  }

  dimension: power_state {
    type: string
    sql: ${TABLE}.power_state ;;
  }

  dimension: resourcepool_id {
    type: string
    sql: ${TABLE}.resourcepool_id ;;
  }

  dimension: resourcepool_name {
    type: string
    sql: ${TABLE}.resourcepool_name ;;
  }

  dimension: storage_guest_capacity {
    type: number
    sql: ${TABLE}.storage_guest_capacity ;;
  }

  dimension: storage_guest_free {
    type: number
    sql: ${TABLE}.storage_guest_free ;;
  }

  dimension: storage_guest_used {
    type: number
    sql: ${TABLE}.storage_guest_used ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: vapp_app_url {
    type: string
    sql: ${TABLE}.vapp_app_url ;;
  }

  dimension: vapp_full_version {
    type: string
    sql: ${TABLE}.vapp_full_version ;;
  }

  dimension: vapp_name {
    type: string
    sql: ${TABLE}.vapp_name ;;
  }

  dimension: vapp_product_url {
    type: string
    sql: ${TABLE}.vapp_product_url ;;
  }

  dimension: vapp_vendor {
    type: string
    sql: ${TABLE}.vapp_vendor ;;
  }

  dimension: vapp_vendor_url {
    type: string
    sql: ${TABLE}.vapp_vendor_url ;;
  }

  dimension: vapp_version {
    type: string
    sql: ${TABLE}.vapp_version ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vm_id {
    type: string
    sql: ${TABLE}.vm_id ;;
  }

  dimension: vm_name {
    type: string
    sql: ${TABLE}.vm_name ;;
  }

  dimension: vm_os_name {
    type: string
    sql: ${TABLE}.vm_os_name ;;
  }

  dimension: vmotion_migrate_tasks_count {
    type: number
    sql: ${TABLE}.vmotion_migrate_tasks_count ;;
  }

  dimension: vmotion_relocate_tasks_count {
    type: number
    sql: ${TABLE}.vmotion_relocate_tasks_count ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      cluster_name,
      guest_os_name,
      guest_host_name,
      vapp_name,
      vm_os_name,
      vm_name,
      host_name,
      datacenter_name,
      resourcepool_name,
      customers.id,
      customers.name
    ]
  }
}
