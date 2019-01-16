view: customers {
  sql_table_name: public.customers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: agenttype {
    type: string
    sql: ${TABLE}.agenttype ;;
  }

  dimension: allow_perf_agents_on_vms {
    type: yesno
    sql: ${TABLE}.allow_perf_agents_on_vms ;;
  }

  dimension_group: assessment_done {
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
    sql: ${TABLE}.assessment_done_date ;;
  }

  dimension: cache_data {
    type: string
    sql: ${TABLE}.cache_data ;;
  }

  dimension: changepassword {
    type: number
    sql: ${TABLE}.changepassword ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: data_status {
    type: string
    sql: ${TABLE}.data_status ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: encpassword {
    type: string
    sql: ${TABLE}.encpassword ;;
  }

  dimension: full_archive_state {
    type: string
    sql: ${TABLE}.full_archive_state ;;
  }

  dimension: has_multiple_account {
    type: yesno
    sql: ${TABLE}.has_multiple_account ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_azure_estimator_customer {
    type: yesno
    sql: ${TABLE}.is_azure_estimator_customer ;;
  }

  dimension: is_ec2_estimator_customer {
    type: yesno
    sql: ${TABLE}.is_ec2_estimator_customer ;;
  }

  dimension: is_ec2_user {
    type: yesno
    sql: ${TABLE}.is_ec2_user ;;
  }

  dimension: is_google_compute_estimator_customer {
    type: yesno
    sql: ${TABLE}.is_google_compute_estimator_customer ;;
  }

  dimension: is_hyperv_user {
    type: yesno
    sql: ${TABLE}.is_hyperv_user ;;
  }

  dimension: is_on_prem_user {
    type: yesno
    sql: ${TABLE}.is_on_prem_user ;;
  }

  dimension: is_trial {
    type: yesno
    sql: ${TABLE}.is_trial ;;
  }

  dimension: is_vmware_user {
    type: yesno
    sql: ${TABLE}.is_vmware_user ;;
  }

  dimension: isactive {
    type: string
    sql: ${TABLE}.isactive ;;
  }

  dimension: isconfigured {
    type: string
    sql: ${TABLE}.isconfigured ;;
  }

  dimension: isproductionready {
    type: string
    sql: ${TABLE}.isproductionready ;;
  }

  dimension_group: lastupdated {
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
    sql: ${TABLE}.lastupdated ;;
  }

  dimension: mapped_customer_id {
    type: number
    sql: ${TABLE}.mapped_customer_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: new_machines_are_visible {
    type: yesno
    sql: ${TABLE}.new_machines_are_visible ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: planning_help_flag {
    type: yesno
    sql: ${TABLE}.planning_help_flag ;;
  }

  dimension: processing_status {
    type: string
    sql: ${TABLE}.processing_status ;;
  }

  dimension: security_or_tag_group {
    type: string
    sql: ${TABLE}.security_or_tag_group ;;
  }

  dimension: send_report {
    type: string
    sql: ${TABLE}.send_report ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: stop_processing {
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
    sql: ${TABLE}.stop_processing_time ;;
  }

  dimension: temp_password {
    type: yesno
    sql: ${TABLE}.temp_password ;;
  }

  dimension: third_party_tools_info {
    type: string
    sql: ${TABLE}.third_party_tools_info ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      action_items.count,
      action_items_for_components.count,
      all_emails_generated.count,
      archive_info.count,
      assessment_type_mapping.count,
      asset_details.count,
      aws_bucket_provisioned_storage_mapping.count,
      awsinstances.count,
      azure_mi_sql_pricing_raw.count,
      azure_network_pricing_v2.count,
      azure_rate_plan.count,
      azure_scaling.count,
      azure_storage_pricing_v2.count,
      azure_vm_pricing_test.count,
      azure_vm_pricing_v2.count,
      azure_vm_pricing_v2_backup_11_sep_18.count,
      azure_vm_pricing_v2_old.count,
      back_up_group_and_asset_info.count,
      client_data_rate.count,
      client_process_info.count,
      component_current_cpu_performance_state.count,
      component_current_performance_state.count,
      component_daily_statistics.count,
      component_daily_statistics_60.count,
      component_hourly_cpu_usage_statistics.count,
      component_hourly_cpu_usage_statistics_60.count,
      component_hourly_cpu_usage_statistics_on_dates.count,
      component_hourly_cpu_usage_statistics_on_dates_60.count,
      component_hourly_disk_usage_statistics.count,
      component_hourly_disk_usage_statistics_60.count,
      component_hourly_disk_usage_statistics_on_dates.count,
      component_hourly_disk_usage_statistics_on_dates_60.count,
      component_hourly_memory_usage_statistics.count,
      component_hourly_memory_usage_statistics_60.count,
      component_hourly_memory_usage_statistics_on_dates.count,
      component_hourly_memory_usage_statistics_on_dates_60.count,
      component_hourly_min_memory_usage_statistics.count,
      component_hourly_min_memory_usage_statistics_60.count,
      component_hourly_min_memory_usage_statistics_on_dates.count,
      component_hourly_min_memory_usage_statistics_on_dates_60.count,
      component_hourly_network_usage_statistics.count,
      component_hourly_network_usage_statistics_60.count,
      component_hourly_network_usage_statistics_on_dates.count,
      component_hourly_network_usage_statistics_on_dates_60.count,
      component_hourly_response_time_statistics.count,
      component_hourly_response_time_statistics_60.count,
      component_hourly_response_time_statistics_on_dates.count,
      component_hourly_response_time_statistics_on_dates_60.count,
      component_hourly_statistics.count,
      component_hourly_statistics_60.count,
      component_hourly_statistics_on_dates_to_consider.count,
      component_hourly_statistics_on_dates_to_consider_60.count,
      component_list.count,
      component_list.count,
      component_memory_usage_bands.count,
      component_peak_utilization.count,
      component_peak_utilization_60.count,
      component_peak_utilization_with_tag.count,
      component_peak_utilization_with_tag60.count,
      component_peak_utilization_with_tag_60.count,
      component_utilization_statistics_for_static_optimization.count,
      component_utilization_statistics_for_static_optimization_60.count,
      component_utilization_statistics_with_tag.count,
      current_cpu_performance_state.count,
      current_performance_state.count,
      customer_data_status_for_archiving.count,
      customer_iaas_settings.count,
      customer_info.count,
      customer_info_bkp.count,
      customer_onboarding_status.count,
      customer_report_summary.count,
      daily_mean_disk_bit_rate.count,
      daily_mean_disk_bit_rate_60.count,
      daily_mean_disk_occupancy.count,
      daily_mean_iops_info.count,
      daily_mean_iops_info_60.count,
      daily_mean_iops_network.count,
      daily_mean_iops_network_60.count,
      daily_mean_network_rate.count,
      daily_mean_network_rate_60.count,
      daily_peak_disk_bit_rate.count,
      daily_peak_disk_bit_rate_60.count,
      daily_peak_disk_occupancy.count,
      daily_peak_disk_occupancy_60.count,
      daily_peak_for_cpu.count,
      daily_peak_for_cpu_60.count,
      daily_peak_for_disk.count,
      daily_peak_for_disk_60.count,
      daily_peak_for_iops.count,
      daily_peak_for_iops_60.count,
      daily_peak_for_iops_read_bitrate_mbps.count,
      daily_peak_for_iops_read_bitrate_mbps_60.count,
      daily_peak_for_iops_write_bitrate_mbps.count,
      daily_peak_for_iops_write_bitrate_mbps_60.count,
      daily_peak_for_memory_usage.count,
      daily_peak_for_memory_usage2.count,
      daily_peak_for_memory_usage2_60.count,
      daily_peak_for_memory_usage_60.count,
      daily_peak_for_min_memory_usage.count,
      daily_peak_for_min_memory_usage_60.count,
      daily_peak_for_network.count,
      daily_peak_for_network_60.count,
      daily_peak_for_response_time.count,
      daily_peak_for_response_time_60.count,
      daily_peak_for_static_optimization.count,
      daily_peak_for_static_optimization_60.count,
      daily_peak_gpssd_bucket_emptiness.count,
      daily_peak_gp_ssd_required_parameters.count,
      daily_peak_gp_ssd_required_parameters_0.count,
      daily_peak_iops_bitrate.count,
      daily_peak_iops_info.count,
      daily_peak_iops_info_60.count,
      daily_peak_iops_network.count,
      daily_peak_iops_network_60.count,
      daily_peak_network_rate.count,
      daily_peak_network_rate_60.count,
      daily_peak_t2_large_cpu_utilization.count,
      daily_peak_t2_large_cpu_utilization_60.count,
      daily_peak_t2_large_credit_balance.count,
      daily_peak_t2_large_credit_balance_60.count,
      daily_peak_t2_medium_cpu_utilization.count,
      daily_peak_t2_medium_cpu_utilization_60.count,
      daily_peak_t2_medium_credit_balance.count,
      daily_peak_t2_medium_credit_balance_60.count,
      daily_peak_t2_micro_cpu_utilization.count,
      daily_peak_t2_micro_cpu_utilization_60.count,
      daily_peak_t2_micro_credit_balance.count,
      daily_peak_t2_micro_credit_balance_60.count,
      daily_peak_t2_nano_cpu_utilization.count,
      daily_peak_t2_nano_cpu_utilization_60.count,
      daily_peak_t2_nano_credit_balance.count,
      daily_peak_t2_nano_credit_balance_60.count,
      daily_peak_t2_small_cpu_utilization.count,
      daily_peak_t2_small_cpu_utilization_60.count,
      daily_peak_t2_small_credit_balance.count,
      daily_peak_t2_small_credit_balance_60.count,
      daily_total_iops.count,
      daily_total_iops_60.count,
      data_processing_state.count,
      dates_to_consider_for_component_optimization.count,
      dates_to_consider_for_component_optimization_60.count,
      dates_to_consider_for_component_optimization_with_tag.count,
      dates_to_consider_for_component_optimization_with_tag_60.count,
      dates_to_consider_for_static_optimization.count,
      dates_to_consider_for_static_optimization_60.count,
      dates_to_consider_with_tag.count,
      dates_to_consider_with_tag_60.count,
      device_to_mount_point.count,
      dmraid_to_mount_point.count,
      error_messages.count,
      google_scaling.count,
      group_details.count,
      group_details_backup_for_updating_infra_id.count,
      histogram_cpu_utilization.count,
      histogram_diskio.count,
      hourly_peak_cpu_usage_on_dates_to_consider.count,
      hourly_peak_disk_bit_rate.count,
      hourly_peak_disk_bit_rate_60.count,
      hourly_peak_disk_occupancy.count,
      hourly_peak_disk_usage_on_dates_to_consider.count,
      hourly_peak_for_iops.count,
      hourly_peak_for_iops_60.count,
      hourly_peak_for_iops_bitrate_read_mbps.count,
      hourly_peak_for_iops_bitrate_read_mbps_60.count,
      hourly_peak_for_iops_bitrate_write_mbps.count,
      hourly_peak_for_iops_bitrate_write_mbps_60.count,
      hourly_peak_for_memory_usage.count,
      hourly_peak_for_memory_usage_60.count,
      hourly_peak_for_min_memory_usage.count,
      hourly_peak_for_min_memory_usage_60.count,
      hourly_peak_for_response_time.count,
      hourly_peak_for_response_time_60.count,
      hourly_peak_for_static_optimization.count,
      hourly_peak_for_static_optimization_60.count,
      hourly_peak_iops_info.count,
      hourly_peak_iops_info_60.count,
      hourly_peak_iops_network.count,
      hourly_peak_iops_network_60.count,
      hourly_peak_memory_usage_on_dates_to_consider.count,
      hourly_peak_min_memory_usage_on_dates_to_consider.count,
      hourly_peak_network_rate.count,
      hourly_peak_network_rate_60.count,
      hourly_peak_network_usage_on_dates_to_consider.count,
      hourly_peak_response_time_on_dates_to_consider.count,
      hourly_peak_t2_large_cpu_utilization.count,
      hourly_peak_t2_large_cpu_utilization_60.count,
      hourly_peak_t2_large_credit_balance.count,
      hourly_peak_t2_large_credit_balance_60.count,
      hourly_peak_t2_medium_cpu_utilization.count,
      hourly_peak_t2_medium_cpu_utilization_60.count,
      hourly_peak_t2_medium_credit_balance.count,
      hourly_peak_t2_medium_credit_balance_60.count,
      hourly_peak_t2_micro_cpu_utilization.count,
      hourly_peak_t2_micro_cpu_utilization_60.count,
      hourly_peak_t2_micro_credit_balance.count,
      hourly_peak_t2_micro_credit_balance_60.count,
      hourly_peak_t2_nano_cpu_utilization.count,
      hourly_peak_t2_nano_cpu_utilization_60.count,
      hourly_peak_t2_nano_credit_balance.count,
      hourly_peak_t2_nano_credit_balance_60.count,
      hourly_peak_t2_small_cpu_utilization.count,
      hourly_peak_t2_small_cpu_utilization_60.count,
      hourly_peak_t2_small_credit_balance.count,
      hourly_peak_t2_small_credit_balance_60.count,
      http_process_name_details.count,
      hyperv_host_spec_cpu2006.count,
      hyperv_vm_name_map.count,
      ignore_times_algorithms.count,
      instance_assessment_status_log.count,
      jvm_min_memory_usage4.count,
      logical_volume_to_volume_group.count,
      machine_info.count,
      memory_usage_bands.count,
      metric_details.count,
      node_data_collection_status.count,
      node_recommendation.count,
      node_running_state.count,
      on_off_cache.count,
      on_off_ignore_times.count,
      on_off_ignore_times.count,
      onprem_running_stats.count,
      onprem_storage_mapping_details.count,
      other_client_names.count,
      other_server_names.count,
      overall_component_utilization.count,
      overall_component_utilization_60.count,
      overall_component_utilization_with_tag.count,
      overall_component_utilization_with_tag_60.count,
      peak_utilization.count,
      peak_utilization_60.count,
      peak_utilization_for_iops_60.count,
      peak_utilization_for_tag_60.count,
      peak_utilization_with_tag.count,
      plan_details.count,
      plan_details_for_azure.count,
      plan_details_for_google.count,
      planning_rules.count,
      port_based_info.count,
      predicted_cpu_usage.count,
      predicted_cpu_usage_60.count,
      predicted_cpu_usage_on_dates_array.count,
      predicted_cpu_usage_on_dates_to_consider.count,
      predicted_disk_bit_rate.count,
      predicted_disk_bit_rate_60.count,
      predicted_disk_capacity.count,
      predicted_disk_occupancy.count,
      predicted_disk_occupancy_60.count,
      predicted_disk_usage.count,
      predicted_disk_usage_60.count,
      predicted_disk_usage_on_dates_array.count,
      predicted_disk_usage_on_dates_to_consider.count,
      predicted_gp_ssd_bucket.count,
      predicted_gp_ssd_bucket_occupancy.count,
      predicted_iops.count,
      predicted_iops_60.count,
      predicted_iops_bitrate_read_mbps.count,
      predicted_iops_bitrate_read_mbps_60.count,
      predicted_iops_bitrate_write_mbps.count,
      predicted_iops_bitrate_write_mbps_60.count,
      predicted_iops_info.count,
      predicted_iops_info_12.count,
      predicted_iops_info_60.count,
      predicted_iops_latency_read.count,
      predicted_iops_latency_read_60.count,
      predicted_iops_latency_write.count,
      predicted_iops_latency_write_60.count,
      predicted_iops_network.count,
      predicted_iops_network_60.count,
      predicted_iops_queue.count,
      predicted_iops_queue_60.count,
      predicted_iops_read.count,
      predicted_iops_read_60.count,
      predicted_iops_thruput_read.count,
      predicted_iops_thruput_read_60.count,
      predicted_iops_thruput_write.count,
      predicted_iops_thruput_write_60.count,
      predicted_iops_write.count,
      predicted_iops_write_60.count,
      predicted_memory_usage.count,
      predicted_memory_usage_60.count,
      predicted_memory_usage_on_dates_array.count,
      predicted_memory_usage_on_dates_to_consider.count,
      predicted_min_memory_usage.count,
      predicted_min_memory_usage_60.count,
      predicted_min_memory_usage_on_dates_array.count,
      predicted_min_memory_usage_on_dates_to_consider.count,
      predicted_network_bit_rate.count,
      predicted_network_rate.count,
      predicted_network_rate_60.count,
      predicted_network_usage.count,
      predicted_network_usage_60.count,
      predicted_network_usage_on_dates_array.count,
      predicted_network_usage_on_dates_to_consider.count,
      predicted_nfs_disk_bit_rate.count,
      predicted_nfs_disk_bit_rate_60.count,
      predicted_response_time.count,
      predicted_response_time_60.count,
      predicted_response_time_on_dates_array.count,
      predicted_t2_large_cpu_utilization.count,
      predicted_t2_large_cpu_utilization_60.count,
      predicted_t2_large_credit_balance.count,
      predicted_t2_large_credit_balance_60.count,
      predicted_t2_medium_cpu_utilization.count,
      predicted_t2_medium_cpu_utilization_60.count,
      predicted_t2_medium_credit_balance.count,
      predicted_t2_medium_credit_balance_60.count,
      predicted_t2_micro_cpu_utilization.count,
      predicted_t2_micro_cpu_utilization_60.count,
      predicted_t2_micro_credit_balance.count,
      predicted_t2_micro_credit_balance_60.count,
      predicted_t2_nano_cpu_utilization.count,
      predicted_t2_nano_cpu_utilization_60.count,
      predicted_t2_nano_credit_balance.count,
      predicted_t2_nano_credit_balance_60.count,
      predicted_t2_small_cpu_utilization.count,
      predicted_t2_small_cpu_utilization_60.count,
      predicted_t2_small_credit_balance.count,
      predicted_t2_small_credit_balance_60.count,
      process_name_details.count,
      recommendations_for_component_optimization.count,
      recommendations_for_component_optimization_60.count,
      recommendations_for_static_optimization.count,
      recommendations_for_static_optimization_60.count,
      server_process_info.count,
      t2_scalings.count,
      uploaded_vcenter_host_info.count,
      uploaded_vcenter_vm_info.count,
      utilization_statistics_for_static_optimization.count,
      utilization_statistics_for_static_optimization_60.count,
      uuid_device_mapping.count,
      vcenter_error_summary.count,
      vmware_5min_avg_vm_net_usage_average.count,
      vmware_cpu_mapping_details.count,
      vmware_cpu_mapping_details_component_v2.count,
      vmware_cpu_mapping_details_v2.count,
      vmware_data_lifecycle_email_info.count,
      vmware_email_lists.count,
      vmware_errors_data_summary.count,
      vmware_host_system_info.count,
      vmware_multimounted_disks_to_ignore.count,
      vmware_network_mapping_details.count,
      vmware_nonvirtual_disk_info.count,
      vmware_one_2_one_mapping.count,
      vmware_onprem_systems.count,
      vmware_realtime_vm_cpu_idle_summation.count,
      vmware_realtime_vm_cpu_idle_summation_31118.count,
      vmware_realtime_vm_cpu_idle_summation_35095.count,
      vmware_realtime_vm_cpu_ready_summation.count,
      vmware_realtime_vm_cpu_ready_summation_31118.count,
      vmware_realtime_vm_cpu_ready_summation_35095.count,
      vmware_realtime_vm_cpu_usage_average.count,
      vmware_realtime_vm_cpu_usage_average_31118.count,
      vmware_realtime_vm_cpu_usage_average_35095.count,
      vmware_realtime_vm_cpu_usagemhz_average.count,
      vmware_realtime_vm_cpu_usagemhz_average_31118.count,
      vmware_realtime_vm_cpu_usagemhz_average_35095.count,
      vmware_realtime_vm_cpu_wait_summation.count,
      vmware_realtime_vm_cpu_wait_summation_31118.count,
      vmware_realtime_vm_cpu_wait_summation_35095.count,
      vmware_realtime_vm_disk_num_read_summation.count,
      vmware_realtime_vm_disk_num_read_summation_31118.count,
      vmware_realtime_vm_disk_num_read_summation_35095.count,
      vmware_realtime_vm_disk_num_write_summation.count,
      vmware_realtime_vm_disk_num_write_summation_31118.count,
      vmware_realtime_vm_disk_num_write_summation_35095.count,
      vmware_realtime_vm_disk_read_average.count,
      vmware_realtime_vm_disk_read_average_31118.count,
      vmware_realtime_vm_disk_read_average_35095.count,
      vmware_realtime_vm_disk_usage_average.count,
      vmware_realtime_vm_disk_usage_average_31118.count,
      vmware_realtime_vm_disk_usage_average_35095.count,
      vmware_realtime_vm_disk_write_average.count,
      vmware_realtime_vm_disk_write_average_31118.count,
      vmware_realtime_vm_disk_write_average_35095.count,
      vmware_realtime_vm_mem_active_average.count,
      vmware_realtime_vm_mem_active_average_31118.count,
      vmware_realtime_vm_mem_active_average_35095.count,
      vmware_realtime_vm_net_received_average.count,
      vmware_realtime_vm_net_received_average_31118.count,
      vmware_realtime_vm_net_received_average_35095.count,
      vmware_realtime_vm_net_transmitted_average.count,
      vmware_realtime_vm_net_transmitted_average_31118.count,
      vmware_realtime_vm_net_transmitted_average_35095.count,
      vmware_realtime_vm_net_usage_average.count,
      vmware_realtime_vm_net_usage_average_31118.count,
      vmware_realtime_vm_net_usage_average_35095.count,
      vmware_realtime_vm_vdisk_number_read_average.count,
      vmware_realtime_vm_vdisk_number_read_average_31118.count,
      vmware_realtime_vm_vdisk_number_read_average_35095.count,
      vmware_realtime_vm_vdisk_number_write_average.count,
      vmware_realtime_vm_vdisk_number_write_average_31118.count,
      vmware_realtime_vm_vdisk_number_write_average_35095.count,
      vmware_realtime_vm_vdisk_read_oio_average.count,
      vmware_realtime_vm_vdisk_read_oio_average_31118.count,
      vmware_realtime_vm_vdisk_read_oio_average_35095.count,
      vmware_realtime_vm_vdisk_read_rate_average.count,
      vmware_realtime_vm_vdisk_read_rate_average_31118.count,
      vmware_realtime_vm_vdisk_read_rate_average_35095.count,
      vmware_realtime_vm_vdisk_totalreadlatency_average.count,
      vmware_realtime_vm_vdisk_totalreadlatency_average_31118.count,
      vmware_realtime_vm_vdisk_totalreadlatency_average_35095.count,
      vmware_realtime_vm_vdisk_totalwritelatency_average.count,
      vmware_realtime_vm_vdisk_totalwritelatency_average_31118.count,
      vmware_realtime_vm_vdisk_totalwritelatency_average_35095.count,
      vmware_realtime_vm_vdisk_write_oio_average.count,
      vmware_realtime_vm_vdisk_write_oio_average_31118.count,
      vmware_realtime_vm_vdisk_write_oio_average_35095.count,
      vmware_realtime_vm_vdisk_write_rate_average.count,
      vmware_realtime_vm_vdisk_write_rate_average_31118.count,
      vmware_realtime_vm_vdisk_write_rate_average_35095.count,
      vmware_status_check.count,
      vmware_storage_mapping.count,
      vmware_storage_mapping_details.count,
      vmware_storage_mapping_details_old.count,
      vmware_summary_object_data.count,
      vmware_system_verification.count,
      vmware_triggered_inventory_log.count,
      vmware_vcenter_system_info.count,
      vmware_vcenter_system_info_2.count,
      vmware_vcenter_system_info_backup.count,
      vmware_vcenter_system_info_copy.count,
      vmware_vcenter_system_info_modification_history.count,
      vmware_virtual_disk_id_map.count,
      vmware_virtual_disk_info.count,
      vmware_virtual_disk_info_v2.count,
      vmware_virtual_disk_merges.count,
      vmware_virtual_disk_to_mount_point_map.count,
      vmware_virtual_disk_to_mount_point_map2.count,
      vmware_vm_cpu_utilization_average.count,
      vmware_vm_disk_io_avg_month.count,
      vmware_vm_disk_io_avg_per_month_per_vdisk.count,
      vmware_vm_ebs_io_cost_provisioned.count,
      vmware_vm_ebs_io_cost_provisioned_per_vdisk.count,
      vmware_vm_ebs_io_cost_standard.count,
      vmware_vm_ebs_io_cost_standard_per_vdisk.count,
      vmware_vm_guest_storage_info.count,
      vmware_vm_network_cost_month.count,
      vmware_vm_network_usage_month_5_min.count,
      vmware_vm_running_stats.count,
      vmware_vms.count,
      vmware_vms_2.count,
      vmware_vms_3.count,
      vmware_vm_state_events.count,
      vmware_vm_state_events_2.count,
      vmware_vm_state_events_3.count,
      vmware_vm_state_events_details.count,
      vmware_vm_state_events_nrs_dev.count,
      vmware_vms_temp.count,
      vmware_vm_system_info.count,
      vmware_vm_system_info_3.count,
      vmware_vm_system_info_nrs_dev.count,
      vmware_volumes_used.count,
      vmware_yearly_vm_cpu_usage_average.count,
      vmware_yearly_vm_mem_consumed_average.count,
      vmware_yearly_vm_mem_usage_average.count,
      volume_group_device_map.count,
      web_app_mapping.count,
      web_site_info.count,
      web_site_info_old.count
    ]
  }
}
