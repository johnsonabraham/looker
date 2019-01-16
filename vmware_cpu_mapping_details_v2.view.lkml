view: vmware_cpu_mapping_details_v2 {
  sql_table_name: public.vmware_cpu_mapping_details_v2 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: annual_cost {
    type: number
    sql: ${TABLE}.annual_cost ;;
  }

  dimension: annual_platform_cost {
    type: number
    sql: ${TABLE}.annual_platform_cost ;;
  }

  dimension: asset_id {
    type: number
    sql: ${TABLE}.asset_id ;;
  }

  dimension: asset_name {
    type: string
    sql: ${TABLE}.asset_name ;;
  }

  dimension: available_disk_io_byte_rate {
    type: number
    sql: ${TABLE}.available_disk_io_byte_rate ;;
  }

  dimension: available_iops {
    type: number
    sql: ${TABLE}.available_iops ;;
  }

  dimension: available_iops_is_sufficient {
    type: yesno
    sql: ${TABLE}.available_iops_is_sufficient ;;
  }

  dimension: available_network_bit_rate {
    type: number
    sql: ${TABLE}.available_network_bit_rate ;;
  }

  dimension: available_network_egress_bit_rate {
    type: number
    sql: ${TABLE}.available_network_egress_bit_rate ;;
  }

  dimension: available_network_ingress_bit_rate {
    type: number
    sql: ${TABLE}.available_network_ingress_bit_rate ;;
  }

  dimension: bottleneck {
    type: string
    sql: ${TABLE}.bottleneck ;;
  }

  dimension: component_id {
    type: number
    sql: ${TABLE}.component_id ;;
  }

  dimension: component_name {
    type: string
    sql: ${TABLE}.component_name ;;
  }

  dimension: compute_service {
    type: string
    sql: ${TABLE}.compute_service ;;
  }

  dimension: cpu_slt {
    type: number
    sql: ${TABLE}.cpu_slt ;;
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

  dimension: ec2_acceptable_peak_memory_gb {
    type: number
    sql: ${TABLE}.ec2_acceptable_peak_memory_gb ;;
  }

  dimension: ec2_available_memory_gb {
    type: number
    sql: ${TABLE}.ec2_available_memory_gb ;;
  }

  dimension: ec2_instance_type {
    type: string
    sql: ${TABLE}.ec2_instance_type ;;
  }

  dimension: ecpus {
    type: number
    sql: ${TABLE}.ecpus ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: is_ebs_optimized {
    type: yesno
    sql: ${TABLE}.is_ebs_optimized ;;
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

  dimension: list_annual_cost {
    type: number
    sql: ${TABLE}.list_annual_cost ;;
  }

  dimension: log_info {
    type: string
    sql: ${TABLE}.log_info ;;
  }

  dimension: min_num_required_disks {
    type: number
    sql: ${TABLE}.min_num_required_disks ;;
  }

  dimension: ms_sql_edition {
    type: string
    sql: ${TABLE}.ms_sql_edition ;;
  }

  dimension: num_available_disks {
    type: number
    sql: ${TABLE}.num_available_disks ;;
  }

  dimension: num_copies_of_host {
    type: number
    sql: ${TABLE}.num_copies_of_host ;;
  }

  dimension: num_cores_required_for_disk_iops {
    type: number
    sql: ${TABLE}.num_cores_required_for_disk_iops ;;
  }

  dimension: observed_cpu_utilization {
    type: number
    sql: ${TABLE}.observed_cpu_utilization ;;
  }

  dimension: on_time_percent {
    type: number
    sql: ${TABLE}.on_time_percent ;;
  }

  dimension: os {
    type: string
    sql: ${TABLE}.os ;;
  }

  dimension: peak_iops {
    type: number
    sql: ${TABLE}.peak_iops ;;
  }

  dimension: plan_id {
    type: number
    sql: ${TABLE}.plan_id ;;
  }

  dimension: predicted_cpu_utilization_on_recommended_type {
    type: number
    sql: ${TABLE}.predicted_cpu_utilization_on_recommended_type ;;
  }

  dimension: pricing_plan {
    type: string
    sql: ${TABLE}.pricing_plan ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: required_disk_io_byte_rate {
    type: number
    sql: ${TABLE}.required_disk_io_byte_rate ;;
  }

  dimension: required_network_bit_rate {
    type: number
    sql: ${TABLE}.required_network_bit_rate ;;
  }

  dimension: required_network_egress_bit_rate {
    type: number
    sql: ${TABLE}.required_network_egress_bit_rate ;;
  }

  dimension: required_network_ingress_bit_rate {
    type: number
    sql: ${TABLE}.required_network_ingress_bit_rate ;;
  }

  dimension: resource_pool_id {
    type: string
    sql: ${TABLE}.resource_pool_id ;;
  }

  dimension: resource_pool_name {
    type: string
    sql: ${TABLE}.resource_pool_name ;;
  }

  dimension: sizing_details {
    type: string
    sql: ${TABLE}.sizing_details ;;
  }

  dimension: use_azure_hybrid_benefits {
    type: yesno
    sql: ${TABLE}.use_azure_hybrid_benefits ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vcpus {
    type: number
    sql: ${TABLE}.vcpus ;;
  }

  dimension: vm_allocated_memory_gb {
    type: number
    sql: ${TABLE}.vm_allocated_memory_gb ;;
  }

  dimension: vm_id {
    type: string
    sql: ${TABLE}.vm_id ;;
  }

  dimension: vm_name {
    type: string
    sql: ${TABLE}.vm_name ;;
  }

  dimension: vm_peak_memory_used_gb {
    type: number
    sql: ${TABLE}.vm_peak_memory_used_gb ;;
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
      data_center_name,
      asset_name,
      component_name,
      vm_name,
      resource_pool_name,
      customers.id,
      customers.name
    ]
  }
}
