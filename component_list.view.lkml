view: component_list {
  sql_table_name: public.component_list ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: asset_id {
    type: number
    sql: ${TABLE}.asset_id ;;
  }

  dimension: asset_name {
    type: string
    sql: ${TABLE}.asset_name ;;
  }

  dimension: assetid {
    type: number
    value_format_name: id
    sql: ${TABLE}.assetid ;;
  }

  dimension: availability_zone {
    type: string
    sql: ${TABLE}.availability_zone ;;
  }

  dimension: command_lines {
    type: string
    sql: ${TABLE}.command_lines ;;
  }

  dimension: component_id {
    type: number
    sql: ${TABLE}.component_id ;;
  }

  dimension: component_name {
    type: string
    sql: ${TABLE}.component_name ;;
  }

  dimension: componentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.componentid ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.customerid ;;
  }

  dimension: data_is_active {
    type: yesno
    sql: ${TABLE}.data_is_active ;;
  }

  dimension: datacenter_id {
    type: string
    sql: ${TABLE}.datacenter_id ;;
  }

  dimension: datacenter_name {
    type: string
    sql: ${TABLE}.datacenter_name ;;
  }

  dimension: dot_net_version {
    type: string
    sql: ${TABLE}.dot_net_version ;;
  }

  dimension: extended_asset_name {
    type: string
    sql: ${TABLE}.extended_asset_name ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }

  dimension: hyperv_network_interfaces {
    type: string
    sql: ${TABLE}.hyperv_network_interfaces ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension: instanceid {
    type: string
    sql: ${TABLE}.instanceid ;;
  }

  dimension: is_ec2 {
    type: yesno
    sql: ${TABLE}.is_ec2 ;;
  }

  dimension: is_hyperv {
    type: yesno
    sql: ${TABLE}.is_hyperv ;;
  }

  dimension: is_linux_onprem {
    type: yesno
    sql: ${TABLE}.is_linux_onprem ;;
  }

  dimension: is_running_ms_sql {
    type: yesno
    sql: ${TABLE}.is_running_ms_sql ;;
  }

  dimension: is_visible {
    type: yesno
    sql: ${TABLE}.is_visible ;;
  }

  dimension: is_vmware {
    type: yesno
    sql: ${TABLE}.is_vmware ;;
  }

  dimension: is_windows_onprem {
    type: yesno
    sql: ${TABLE}.is_windows_onprem ;;
  }

  dimension_group: last_reconfigure {
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
    sql: ${TABLE}.last_reconfigure_time ;;
  }

  dimension: ms_sql_details {
    type: string
    sql: ${TABLE}.ms_sql_details ;;
  }

  dimension: os {
    type: string
    sql: ${TABLE}.os ;;
  }

  dimension: os_details {
    type: string
    sql: ${TABLE}.os_details ;;
  }

  dimension: os_is_64_bit {
    type: number
    sql: ${TABLE}.os_is_64_bit ;;
  }

  dimension: os_is_end_of_life {
    type: number
    sql: ${TABLE}.os_is_end_of_life ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: resourcepool_id {
    type: string
    sql: ${TABLE}.resourcepool_id ;;
  }

  dimension: resourcepool_name {
    type: string
    sql: ${TABLE}.resourcepool_name ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vcenter_name {
    type: string
    sql: ${TABLE}.vcenter_name ;;
  }

  dimension: vm_full_name {
    type: string
    sql: ${TABLE}.vm_full_name ;;
  }

  dimension: vm_id {
    type: string
    sql: ${TABLE}.vm_id ;;
  }

  dimension: vm_name {
    type: string
    sql: ${TABLE}.vm_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      group_name,
      vcenter_name,
      extended_asset_name,
      vm_full_name,
      vm_name,
      resourcepool_name,
      datacenter_name,
      component_name,
      asset_name,
      customers.id,
      customers.name,
      customers.id,
      customers.name
    ]
  }
}
