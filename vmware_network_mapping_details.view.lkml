view: vmware_network_mapping_details {
  sql_table_name: public.vmware_network_mapping_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: annual_cost {
    type: number
    sql: ${TABLE}.annual_cost ;;
  }

  dimension: annual_cost_for_received_traffic {
    type: number
    sql: ${TABLE}.annual_cost_for_received_traffic ;;
  }

  dimension: annual_cost_for_transmitted_traffic {
    type: number
    sql: ${TABLE}.annual_cost_for_transmitted_traffic ;;
  }

  dimension: annual_cost_list {
    type: number
    sql: ${TABLE}.annual_cost_list ;;
  }

  dimension: asset_id {
    type: number
    sql: ${TABLE}.asset_id ;;
  }

  dimension: asset_name {
    type: string
    sql: ${TABLE}.asset_name ;;
  }

  dimension: component_id {
    type: number
    sql: ${TABLE}.component_id ;;
  }

  dimension: component_name {
    type: string
    sql: ${TABLE}.component_name ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: data_center_id {
    type: string
    sql: ${TABLE}.data_center_id ;;
  }

  dimension: data_center_name {
    type: string
    sql: ${TABLE}.data_center_name ;;
  }

  dimension: ec2_instance_type {
    type: string
    sql: ${TABLE}.ec2_instance_type ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }

  dimension: groupd_id {
    type: number
    sql: ${TABLE}.groupd_id ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
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

  dimension: is_vmware {
    type: yesno
    sql: ${TABLE}.is_vmware ;;
  }

  dimension: is_windows_onprem {
    type: yesno
    sql: ${TABLE}.is_windows_onprem ;;
  }

  dimension: network_bytes_per_month {
    type: number
    sql: ${TABLE}.network_bytes_per_month ;;
  }

  dimension: network_receive_from_internet_gb_per_month {
    type: number
    sql: ${TABLE}.network_receive_from_internet_gb_per_month ;;
  }

  dimension: network_transmit_to_internet_gb_per_month {
    type: number
    sql: ${TABLE}.network_transmit_to_internet_gb_per_month ;;
  }

  dimension: num_copies_of_host {
    type: number
    sql: ${TABLE}.num_copies_of_host ;;
  }

  dimension: on_time_percent {
    type: number
    sql: ${TABLE}.on_time_percent ;;
  }

  dimension: peak_network_io_percent {
    type: number
    sql: ${TABLE}.peak_network_io_percent ;;
  }

  dimension: plan_id {
    type: number
    sql: ${TABLE}.plan_id ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: resource_pool_id {
    type: string
    sql: ${TABLE}.resource_pool_id ;;
  }

  dimension: resource_pool_name {
    type: string
    sql: ${TABLE}.resource_pool_name ;;
  }

  dimension: unscaled_net_rx_gbyter_per_month {
    type: number
    sql: ${TABLE}.unscaled_net_rx_gbyter_per_month ;;
  }

  dimension: unscaled_net_tx_gbyte_per_month {
    type: number
    sql: ${TABLE}.unscaled_net_tx_gbyte_per_month ;;
  }

  dimension: unscaled_peak_rx_gbps {
    type: number
    sql: ${TABLE}.unscaled_peak_rx_gbps ;;
  }

  dimension: unscaled_peak_tx_gbps {
    type: number
    sql: ${TABLE}.unscaled_peak_tx_gbps ;;
  }

  dimension: unscaledpeakrx_gbps_90 {
    type: number
    sql: ${TABLE}.unscaledpeakrx_gbps_90 ;;
  }

  dimension: unscaledpeakrx_gbps_95 {
    type: number
    sql: ${TABLE}.unscaledpeakrx_gbps_95 ;;
  }

  dimension: unscaledpeakrx_gbps_max {
    type: number
    sql: ${TABLE}.unscaledpeakrx_gbps_max ;;
  }

  dimension: unscaledpeaktx_gbps_90 {
    type: number
    sql: ${TABLE}.unscaledpeaktx_gbps_90 ;;
  }

  dimension: unscaledpeaktx_gbps_95 {
    type: number
    sql: ${TABLE}.unscaledpeaktx_gbps_95 ;;
  }

  dimension: unscaledpeaktx_gbps_max {
    type: number
    sql: ${TABLE}.unscaledpeaktx_gbps_max ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      asset_name,
      component_name,
      data_center_name,
      resource_pool_name,
      vm_name,
      group_name,
      customers.id,
      customers.name
    ]
  }
}
