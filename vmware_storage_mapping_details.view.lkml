view: vmware_storage_mapping_details {
  sql_table_name: public.vmware_storage_mapping_details ;;

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

  dimension: available_disk_io_byte_rate {
    type: number
    sql: ${TABLE}.available_disk_io_byte_rate ;;
  }

  dimension: available_iops {
    type: number
    sql: ${TABLE}.available_iops ;;
  }

  dimension: available_throughput_bytes_per_sec {
    type: number
    sql: ${TABLE}.available_throughput_bytes_per_sec ;;
  }

  dimension: azure_basic_available_peak_iops {
    type: number
    sql: ${TABLE}.azure_basic_available_peak_iops ;;
  }

  dimension: azure_basic_managed_available_peak_iops {
    type: number
    sql: ${TABLE}.azure_basic_managed_available_peak_iops ;;
  }

  dimension: azure_basic_managed_required_num_disks {
    type: number
    sql: ${TABLE}.azure_basic_managed_required_num_disks ;;
  }

  dimension: azure_basic_managed_size_of_each_disk {
    type: number
    sql: ${TABLE}.azure_basic_managed_size_of_each_disk ;;
  }

  dimension: azure_basic_managed_storage_annual_cost {
    type: number
    sql: ${TABLE}.azure_basic_managed_storage_annual_cost ;;
  }

  dimension: azure_basic_required_num_disks {
    type: number
    sql: ${TABLE}.azure_basic_required_num_disks ;;
  }

  dimension: azure_instance_is_basic {
    type: yesno
    sql: ${TABLE}.azure_instance_is_basic ;;
  }

  dimension: azure_instance_supports_premium {
    type: yesno
    sql: ${TABLE}.azure_instance_supports_premium ;;
  }

  dimension: azure_p10_annual_cost {
    type: number
    sql: ${TABLE}.azure_p10_annual_cost ;;
  }

  dimension: azure_p10_available_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p10_available_bytes_per_sec ;;
  }

  dimension: azure_p10_available_peak_iops {
    type: number
    sql: ${TABLE}.azure_p10_available_peak_iops ;;
  }

  dimension: azure_p10_required_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p10_required_bytes_per_sec ;;
  }

  dimension: azure_p10_required_num_disks {
    type: number
    sql: ${TABLE}.azure_p10_required_num_disks ;;
  }

  dimension: azure_p15_annual_cost {
    type: number
    sql: ${TABLE}.azure_p15_annual_cost ;;
  }

  dimension: azure_p15_available_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p15_available_bytes_per_sec ;;
  }

  dimension: azure_p15_available_peak_iops {
    type: number
    sql: ${TABLE}.azure_p15_available_peak_iops ;;
  }

  dimension: azure_p15_required_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p15_required_bytes_per_sec ;;
  }

  dimension: azure_p15_required_num_disks {
    type: number
    sql: ${TABLE}.azure_p15_required_num_disks ;;
  }

  dimension: azure_p20_annual_cost {
    type: number
    sql: ${TABLE}.azure_p20_annual_cost ;;
  }

  dimension: azure_p20_available_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p20_available_bytes_per_sec ;;
  }

  dimension: azure_p20_available_peak_iops {
    type: number
    sql: ${TABLE}.azure_p20_available_peak_iops ;;
  }

  dimension: azure_p20_required_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p20_required_bytes_per_sec ;;
  }

  dimension: azure_p20_required_num_disks {
    type: number
    sql: ${TABLE}.azure_p20_required_num_disks ;;
  }

  dimension: azure_p30_annual_cost {
    type: number
    sql: ${TABLE}.azure_p30_annual_cost ;;
  }

  dimension: azure_p30_available_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p30_available_bytes_per_sec ;;
  }

  dimension: azure_p30_available_peak_iops {
    type: number
    sql: ${TABLE}.azure_p30_available_peak_iops ;;
  }

  dimension: azure_p30_required_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p30_required_bytes_per_sec ;;
  }

  dimension: azure_p30_required_num_disks {
    type: number
    sql: ${TABLE}.azure_p30_required_num_disks ;;
  }

  dimension: azure_p40_annual_cost {
    type: number
    sql: ${TABLE}.azure_p40_annual_cost ;;
  }

  dimension: azure_p40_available_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p40_available_bytes_per_sec ;;
  }

  dimension: azure_p40_available_peak_iops {
    type: number
    sql: ${TABLE}.azure_p40_available_peak_iops ;;
  }

  dimension: azure_p40_required_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p40_required_bytes_per_sec ;;
  }

  dimension: azure_p40_required_num_disks {
    type: number
    sql: ${TABLE}.azure_p40_required_num_disks ;;
  }

  dimension: azure_p4_annual_cost {
    type: number
    sql: ${TABLE}.azure_p4_annual_cost ;;
  }

  dimension: azure_p4_available_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p4_available_bytes_per_sec ;;
  }

  dimension: azure_p4_available_peak_iops {
    type: number
    sql: ${TABLE}.azure_p4_available_peak_iops ;;
  }

  dimension: azure_p4_required_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p4_required_bytes_per_sec ;;
  }

  dimension: azure_p4_required_num_disks {
    type: number
    sql: ${TABLE}.azure_p4_required_num_disks ;;
  }

  dimension: azure_p50_annual_cost {
    type: number
    sql: ${TABLE}.azure_p50_annual_cost ;;
  }

  dimension: azure_p50_available_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p50_available_bytes_per_sec ;;
  }

  dimension: azure_p50_available_peak_iops {
    type: number
    sql: ${TABLE}.azure_p50_available_peak_iops ;;
  }

  dimension: azure_p50_required_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p50_required_bytes_per_sec ;;
  }

  dimension: azure_p50_required_num_disks {
    type: number
    sql: ${TABLE}.azure_p50_required_num_disks ;;
  }

  dimension: azure_p6_annual_cost {
    type: number
    sql: ${TABLE}.azure_p6_annual_cost ;;
  }

  dimension: azure_p6_available_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p6_available_bytes_per_sec ;;
  }

  dimension: azure_p6_available_peak_iops {
    type: number
    sql: ${TABLE}.azure_p6_available_peak_iops ;;
  }

  dimension: azure_p6_required_bytes_per_sec {
    type: number
    sql: ${TABLE}.azure_p6_required_bytes_per_sec ;;
  }

  dimension: azure_p6_required_num_disks {
    type: number
    sql: ${TABLE}.azure_p6_required_num_disks ;;
  }

  dimension: azure_premium_required_peak_iops {
    type: number
    sql: ${TABLE}.azure_premium_required_peak_iops ;;
  }

  dimension: azure_standard_available_peak_iops {
    type: number
    sql: ${TABLE}.azure_standard_available_peak_iops ;;
  }

  dimension: azure_standard_iops_annual_cost {
    type: number
    sql: ${TABLE}.azure_standard_iops_annual_cost ;;
  }

  dimension: azure_standard_managed_available_peak_iops {
    type: number
    sql: ${TABLE}.azure_standard_managed_available_peak_iops ;;
  }

  dimension: azure_standard_managed_iops_annual_cost {
    type: number
    sql: ${TABLE}.azure_standard_managed_iops_annual_cost ;;
  }

  dimension: azure_standard_managed_required_num_disks {
    type: number
    sql: ${TABLE}.azure_standard_managed_required_num_disks ;;
  }

  dimension: azure_standard_managed_size_of_each_disk {
    type: number
    sql: ${TABLE}.azure_standard_managed_size_of_each_disk ;;
  }

  dimension: azure_standard_managed_storage_annual_cost {
    type: number
    sql: ${TABLE}.azure_standard_managed_storage_annual_cost ;;
  }

  dimension: azure_standard_required_num_disks {
    type: number
    sql: ${TABLE}.azure_standard_required_num_disks ;;
  }

  dimension: azure_standard_required_peak_iops {
    type: number
    sql: ${TABLE}.azure_standard_required_peak_iops ;;
  }

  dimension: azure_standard_storage_annual_cost {
    type: number
    sql: ${TABLE}.azure_standard_storage_annual_cost ;;
  }

  dimension: base_gp_ssd {
    type: string
    sql: ${TABLE}.base_gp_ssd ;;
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

  dimension: details {
    type: string
    sql: ${TABLE}.details ;;
  }

  dimension: devices {
    type: string
    sql: ${TABLE}.devices ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: ebs_annual_cost {
    type: number
    sql: ${TABLE}.ebs_annual_cost ;;
  }

  dimension: ebs_occupancy_gb {
    type: number
    sql: ${TABLE}.ebs_occupancy_gb ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }

  dimension: index_of_aws_bucket_provisioned_storage {
    type: number
    sql: ${TABLE}.index_of_aws_bucket_provisioned_storage ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension: iops_annual_cost {
    type: number
    sql: ${TABLE}.iops_annual_cost ;;
  }

  dimension: iops_annual_cost_list {
    type: number
    sql: ${TABLE}.iops_annual_cost_list ;;
  }

  dimension: iops_per_month {
    type: number
    sql: ${TABLE}.iops_per_month ;;
  }

  dimension: is_ec2 {
    type: yesno
    sql: ${TABLE}.is_ec2 ;;
  }

  dimension: is_hyperv {
    type: yesno
    sql: ${TABLE}.is_hyperv ;;
  }

  dimension: is_ignored {
    type: yesno
    sql: ${TABLE}.is_ignored ;;
  }

  dimension: is_linux_onprem {
    type: yesno
    sql: ${TABLE}.is_linux_onprem ;;
  }

  dimension: is_raid1 {
    type: yesno
    sql: ${TABLE}.is_raid1 ;;
  }

  dimension: is_vmware {
    type: yesno
    sql: ${TABLE}.is_vmware ;;
  }

  dimension: is_windows_onprem {
    type: yesno
    sql: ${TABLE}.is_windows_onprem ;;
  }

  dimension: local_disk_available_iops {
    type: number
    sql: ${TABLE}.local_disk_available_iops ;;
  }

  dimension: local_disk_required_iops {
    type: number
    sql: ${TABLE}.local_disk_required_iops ;;
  }

  dimension: local_ssd_annual_cost {
    type: number
    sql: ${TABLE}.local_ssd_annual_cost ;;
  }

  dimension: local_ssd_size {
    type: number
    sql: ${TABLE}.local_ssd_size ;;
  }

  dimension: max_available_iops {
    type: number
    sql: ${TABLE}.max_available_iops ;;
  }

  dimension: mean_iops_per_month_unscaled {
    type: number
    sql: ${TABLE}.mean_iops_per_month_unscaled ;;
  }

  dimension: num_copies_of_host {
    type: number
    sql: ${TABLE}.num_copies_of_host ;;
  }

  dimension: num_piop_raid0_volumes {
    type: number
    sql: ${TABLE}.num_piop_raid0_volumes ;;
  }

  dimension: observed_iops {
    type: string
    sql: ${TABLE}.observed_iops ;;
  }

  dimension: on_time_percent {
    type: number
    sql: ${TABLE}.on_time_percent ;;
  }

  dimension: peak_iops {
    type: number
    sql: ${TABLE}.peak_iops ;;
  }

  dimension: peak_iops_100 {
    type: number
    sql: ${TABLE}.peak_iops_100 ;;
  }

  dimension: peak_iops_90 {
    type: number
    sql: ${TABLE}.peak_iops_90 ;;
  }

  dimension: peak_iops_95 {
    type: number
    sql: ${TABLE}.peak_iops_95 ;;
  }

  dimension: peak_throughput_100_bytes_per_sec {
    type: number
    sql: ${TABLE}.peak_throughput_100_bytes_per_sec ;;
  }

  dimension: peak_throughput_90_bytes_per_sec {
    type: number
    sql: ${TABLE}.peak_throughput_90_bytes_per_sec ;;
  }

  dimension: peak_throughput_95_bytes_per_sec {
    type: number
    sql: ${TABLE}.peak_throughput_95_bytes_per_sec ;;
  }

  dimension: peak_throughput_bytes_per_sec {
    type: number
    sql: ${TABLE}.peak_throughput_bytes_per_sec ;;
  }

  dimension: peak_type {
    type: string
    sql: ${TABLE}.peak_type ;;
  }

  dimension: plan_id {
    type: number
    sql: ${TABLE}.plan_id ;;
  }

  dimension: provisioned_iops {
    type: number
    sql: ${TABLE}.provisioned_iops ;;
  }

  dimension: redundancy_type {
    type: number
    sql: ${TABLE}.redundancy_type ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: required_capacity_gb {
    type: number
    sql: ${TABLE}.required_capacity_gb ;;
  }

  dimension: required_disk_io_byte_rate {
    type: number
    sql: ${TABLE}.required_disk_io_byte_rate ;;
  }

  dimension: resource_pool_id {
    type: string
    sql: ${TABLE}.resource_pool_id ;;
  }

  dimension: resource_pool_name {
    type: string
    sql: ${TABLE}.resource_pool_name ;;
  }

  dimension: selected_number_of_volumes {
    type: number
    sql: ${TABLE}.selected_number_of_volumes ;;
  }

  dimension: selected_storage_type {
    type: string
    sql: ${TABLE}.selected_storage_type ;;
  }

  dimension: size_of_each_volume {
    type: number
    sql: ${TABLE}.size_of_each_volume ;;
  }

  dimension: ssd_annual_cost {
    type: number
    sql: ${TABLE}.ssd_annual_cost ;;
  }

  dimension: ssd_available_disk_read_bandwidth {
    type: number
    sql: ${TABLE}.ssd_available_disk_read_bandwidth ;;
  }

  dimension: ssd_available_disk_write_bandwidth {
    type: number
    sql: ${TABLE}.ssd_available_disk_write_bandwidth ;;
  }

  dimension: ssd_available_read_ops {
    type: number
    sql: ${TABLE}.ssd_available_read_ops ;;
  }

  dimension: ssd_available_write_ops {
    type: number
    sql: ${TABLE}.ssd_available_write_ops ;;
  }

  dimension: ssd_bandwidth_limit_utilization {
    type: number
    sql: ${TABLE}.ssd_bandwidth_limit_utilization ;;
  }

  dimension: ssd_capacity {
    type: number
    sql: ${TABLE}.ssd_capacity ;;
  }

  dimension: ssd_iops_limit_utilization {
    type: number
    sql: ${TABLE}.ssd_iops_limit_utilization ;;
  }

  dimension: ssd_num_volumes {
    type: number
    sql: ${TABLE}.ssd_num_volumes ;;
  }

  dimension: ssd_required_disk_read_bandwidth {
    type: number
    sql: ${TABLE}.ssd_required_disk_read_bandwidth ;;
  }

  dimension: ssd_required_disk_write_bandwidth {
    type: number
    sql: ${TABLE}.ssd_required_disk_write_bandwidth ;;
  }

  dimension: ssd_required_read_ops {
    type: number
    sql: ${TABLE}.ssd_required_read_ops ;;
  }

  dimension: ssd_required_size {
    type: number
    sql: ${TABLE}.ssd_required_size ;;
  }

  dimension: ssd_required_write_ops {
    type: number
    sql: ${TABLE}.ssd_required_write_ops ;;
  }

  dimension: standard_annual_cost {
    type: number
    sql: ${TABLE}.standard_annual_cost ;;
  }

  dimension: standard_available_disk_read_bandwidth {
    type: number
    sql: ${TABLE}.standard_available_disk_read_bandwidth ;;
  }

  dimension: standard_available_disk_write_bandwidth {
    type: number
    sql: ${TABLE}.standard_available_disk_write_bandwidth ;;
  }

  dimension: standard_available_read_ops {
    type: number
    sql: ${TABLE}.standard_available_read_ops ;;
  }

  dimension: standard_available_write_ops {
    type: number
    sql: ${TABLE}.standard_available_write_ops ;;
  }

  dimension: standard_bandwidth_limit_utilization {
    type: number
    sql: ${TABLE}.standard_bandwidth_limit_utilization ;;
  }

  dimension: standard_iops_limit_utilization {
    type: number
    sql: ${TABLE}.standard_iops_limit_utilization ;;
  }

  dimension: standard_required_disk_read_bandwidth {
    type: number
    sql: ${TABLE}.standard_required_disk_read_bandwidth ;;
  }

  dimension: standard_required_disk_write_bandwidth {
    type: number
    sql: ${TABLE}.standard_required_disk_write_bandwidth ;;
  }

  dimension: standard_required_read_ops {
    type: number
    sql: ${TABLE}.standard_required_read_ops ;;
  }

  dimension: standard_required_size {
    type: number
    sql: ${TABLE}.standard_required_size ;;
  }

  dimension: standard_required_write_ops {
    type: number
    sql: ${TABLE}.standard_required_write_ops ;;
  }

  dimension: total_annual_cost {
    type: number
    sql: ${TABLE}.total_annual_cost ;;
  }

  dimension: total_number_disks_supported_by_instance {
    type: number
    sql: ${TABLE}.total_number_disks_supported_by_instance ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vdisk_capacity_gb {
    type: number
    sql: ${TABLE}.vdisk_capacity_gb ;;
  }

  dimension: vdisk_name {
    type: string
    sql: ${TABLE}.vdisk_name ;;
  }

  dimension: vdisk_occupancy_gb {
    type: string
    sql: ${TABLE}.vdisk_occupancy_gb ;;
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
      vdisk_name,
      group_name,
      display_name,
      customers.id,
      customers.name
    ]
  }
}
