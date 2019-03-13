connection: "qa_cooked"

# include all the views
include: "*.view"

datagroup: explore_looker1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: explore_looker1_default_datagroup


explore: awsinstances {
  join: customers {
    type: left_outer
    sql_on: ${awsinstances.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_current_cpu_performance_state {
  join: customers {
    type: left_outer
    sql_on: ${component_current_cpu_performance_state.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_current_performance_state {
  join: customers {
    type: left_outer
    sql_on: ${component_current_performance_state.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_daily_statistics {
  join: customers {
    type: left_outer
    sql_on: ${component_daily_statistics.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_daily_statistics_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_daily_statistics_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_cpu_usage_statistics {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_cpu_usage_statistics.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_cpu_usage_statistics_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_cpu_usage_statistics_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_cpu_usage_statistics_on_dates {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_cpu_usage_statistics_on_dates.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_cpu_usage_statistics_on_dates_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_cpu_usage_statistics_on_dates_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_disk_usage_statistics {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_disk_usage_statistics.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_disk_usage_statistics_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_disk_usage_statistics_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_disk_usage_statistics_on_dates {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_disk_usage_statistics_on_dates.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_disk_usage_statistics_on_dates_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_disk_usage_statistics_on_dates_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_memory_usage_statistics {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_memory_usage_statistics.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_memory_usage_statistics_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_memory_usage_statistics_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_memory_usage_statistics_on_dates {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_memory_usage_statistics_on_dates.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_memory_usage_statistics_on_dates_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_memory_usage_statistics_on_dates_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_min_memory_usage_statistics {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_min_memory_usage_statistics.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_min_memory_usage_statistics_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_min_memory_usage_statistics_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_min_memory_usage_statistics_on_dates {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_min_memory_usage_statistics_on_dates.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_min_memory_usage_statistics_on_dates_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_min_memory_usage_statistics_on_dates_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_network_usage_statistics {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_network_usage_statistics.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_network_usage_statistics_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_network_usage_statistics_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_network_usage_statistics_on_dates {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_network_usage_statistics_on_dates.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_network_usage_statistics_on_dates_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_network_usage_statistics_on_dates_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_response_time_statistics {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_response_time_statistics.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_response_time_statistics_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_response_time_statistics_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_response_time_statistics_on_dates {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_response_time_statistics_on_dates.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_response_time_statistics_on_dates_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_response_time_statistics_on_dates_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_statistics {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_statistics.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_statistics_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_statistics_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_statistics_on_dates_to_consider {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_statistics_on_dates_to_consider.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_hourly_statistics_on_dates_to_consider_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_hourly_statistics_on_dates_to_consider_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_list {
  join: customers {
    type: left_outer
    sql_on: ${component_list.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_memory_usage_bands {
  join: customers {
    type: left_outer
    sql_on: ${component_memory_usage_bands.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_peak_utilization {
  join: customers {
    type: left_outer
    sql_on: ${component_peak_utilization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_peak_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_peak_utilization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_peak_utilization_with_tag {
  join: customers {
    type: left_outer
    sql_on: ${component_peak_utilization_with_tag.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_peak_utilization_with_tag60 {
  join: customers {
    type: left_outer
    sql_on: ${component_peak_utilization_with_tag60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_peak_utilization_with_tag_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_peak_utilization_with_tag_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_utilization_statistics_for_static_optimization {
  join: customers {
    type: left_outer
    sql_on: ${component_utilization_statistics_for_static_optimization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_utilization_statistics_for_static_optimization_60 {
  join: customers {
    type: left_outer
    sql_on: ${component_utilization_statistics_for_static_optimization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: component_utilization_statistics_with_tag {
  join: customers {
    type: left_outer
    sql_on: ${component_utilization_statistics_with_tag.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: current_cpu_performance_state {
  join: customers {
    type: left_outer
    sql_on: ${current_cpu_performance_state.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: current_performance_state {
  join: customers {
    type: left_outer
    sql_on: ${current_performance_state.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: customer_data_status_for_archiving {
  join: customers {
    type: left_outer
    sql_on: ${customer_data_status_for_archiving.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: customer_iaas_settings {
  join: customers {
    type: left_outer
    sql_on: ${customer_iaas_settings.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: customer_info {
  join: customers {
    type: left_outer
    sql_on: ${customer_info.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: customer_info_bkp {
  join: customers {
    type: left_outer
    sql_on: ${customer_info_bkp.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: customer_onboarding_status {
  join: customers {
    type: left_outer
    sql_on: ${customer_onboarding_status.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: customer_report_summary {
  join: customers {
    type: left_outer
    sql_on: ${customer_report_summary.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: customers {}

# User Attributes
explore: 1_sample {
  access_filter: {
    field: customer_id
    user_attribute: cust_id
  }
}

explore: customers_bkp {}

explore: daily_mean_disk_bit_rate {
  join: customers {
    type: left_outer
    sql_on: ${daily_mean_disk_bit_rate.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_mean_disk_bit_rate_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_mean_disk_bit_rate_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_mean_disk_occupancy {
  join: customers {
    type: left_outer
    sql_on: ${daily_mean_disk_occupancy.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_mean_iops_info {
  join: customers {
    type: left_outer
    sql_on: ${daily_mean_iops_info.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_mean_iops_info_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_mean_iops_info_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_mean_iops_network {
  join: customers {
    type: left_outer
    sql_on: ${daily_mean_iops_network.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_mean_iops_network_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_mean_iops_network_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_mean_network_rate {
  join: customers {
    type: left_outer
    sql_on: ${daily_mean_network_rate.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_mean_network_rate_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_mean_network_rate_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_disk_bit_rate {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_disk_bit_rate.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_disk_bit_rate_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_disk_bit_rate_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_disk_occupancy {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_disk_occupancy.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_disk_occupancy_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_disk_occupancy_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_cpu {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_cpu.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_cpu_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_cpu_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_disk {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_disk.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_disk_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_disk_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_iops {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_iops.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_iops_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_iops_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_iops_read_bitrate_mbps {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_iops_read_bitrate_mbps.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_iops_read_bitrate_mbps_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_iops_read_bitrate_mbps_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_iops_write_bitrate_mbps {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_iops_write_bitrate_mbps.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_iops_write_bitrate_mbps_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_iops_write_bitrate_mbps_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_memory_usage {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_memory_usage.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_memory_usage2 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_memory_usage2.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_memory_usage2_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_memory_usage2_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_memory_usage_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_memory_usage_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_min_memory_usage {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_min_memory_usage.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_min_memory_usage_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_min_memory_usage_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_network {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_network.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_network_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_network_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_response_time {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_response_time.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_response_time_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_response_time_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_static_optimization {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_static_optimization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_for_static_optimization_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_for_static_optimization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_gp_ssd_required_parameters {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_gp_ssd_required_parameters.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_gp_ssd_required_parameters_0 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_gp_ssd_required_parameters_0.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_gpssd_bucket_emptiness {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_gpssd_bucket_emptiness.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_iops_bitrate {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_iops_bitrate.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_iops_info {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_iops_info.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_iops_info_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_iops_info_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_iops_network {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_iops_network.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_iops_network_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_iops_network_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_network_rate {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_network_rate.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_network_rate_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_network_rate_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_large_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_large_cpu_utilization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_large_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_large_cpu_utilization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_large_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_large_credit_balance.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_large_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_large_credit_balance_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_medium_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_medium_cpu_utilization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_medium_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_medium_cpu_utilization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_medium_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_medium_credit_balance.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_medium_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_medium_credit_balance_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_micro_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_micro_cpu_utilization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_micro_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_micro_cpu_utilization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_micro_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_micro_credit_balance.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_micro_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_micro_credit_balance_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_nano_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_nano_cpu_utilization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_nano_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_nano_cpu_utilization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_nano_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_nano_credit_balance.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_nano_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_nano_credit_balance_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_small_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_small_cpu_utilization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_small_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_small_cpu_utilization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_small_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_small_credit_balance.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_peak_t2_small_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_peak_t2_small_credit_balance_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_total_iops {
  join: customers {
    type: left_outer
    sql_on: ${daily_total_iops.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: daily_total_iops_60 {
  join: customers {
    type: left_outer
    sql_on: ${daily_total_iops_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: data_processing_state {
  join: customers {
    type: left_outer
    sql_on: ${data_processing_state.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: datasource_metadata_cached {}

explore: dates_to_consider_for_component_optimization {
  join: customers {
    type: left_outer
    sql_on: ${dates_to_consider_for_component_optimization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: dates_to_consider_for_component_optimization_60 {
  join: customers {
    type: left_outer
    sql_on: ${dates_to_consider_for_component_optimization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: dates_to_consider_for_component_optimization_with_tag {
  join: customers {
    type: left_outer
    sql_on: ${dates_to_consider_for_component_optimization_with_tag.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: dates_to_consider_for_component_optimization_with_tag_60 {
  join: customers {
    type: left_outer
    sql_on: ${dates_to_consider_for_component_optimization_with_tag_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: dates_to_consider_for_static_optimization {
  join: customers {
    type: left_outer
    sql_on: ${dates_to_consider_for_static_optimization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: dates_to_consider_for_static_optimization_60 {
  join: customers {
    type: left_outer
    sql_on: ${dates_to_consider_for_static_optimization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: dates_to_consider_with_tag {
  join: customers {
    type: left_outer
    sql_on: ${dates_to_consider_with_tag.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: dates_to_consider_with_tag_60 {
  join: customers {
    type: left_outer
    sql_on: ${dates_to_consider_with_tag_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: device_to_mount_point {
  join: customers {
    type: left_outer
    sql_on: ${device_to_mount_point.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: dmraid_to_mount_point {
  join: customers {
    type: left_outer
    sql_on: ${dmraid_to_mount_point.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: ebs_pricing {}

explore: ebs_pricing_bbkup_10_april_18 {}

explore: ebs_pricing_bbkup_9_may_17 {}

explore: ebs_pricing_latest {}

explore: ebs_pricing_raw {}

explore: ec2_instance_type_info {}

explore: error_messages {
  join: customers {
    type: left_outer
    sql_on: ${error_messages.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: errors_for_sensu {}

explore: google {}

explore: google_rate_plan {}

explore: google_scaling {
  join: customers {
    type: left_outer
    sql_on: ${google_scaling.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: group_details {
  join: customers {
    type: left_outer
    sql_on: ${group_details.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: group_details_backup_for_updating_infra_id {
  join: customers {
    type: left_outer
    sql_on: ${group_details_backup_for_updating_infra_id.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: heatbeat_monitor_for_sensu {}

explore: histogram_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${histogram_cpu_utilization.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: histogram_diskio {
  join: customers {
    type: left_outer
    sql_on: ${histogram_diskio.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_cpu_usage_on_dates_to_consider {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_cpu_usage_on_dates_to_consider.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_disk_bit_rate {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_disk_bit_rate.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_disk_bit_rate_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_disk_bit_rate_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_disk_occupancy {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_disk_occupancy.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_disk_usage_on_dates_to_consider {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_disk_usage_on_dates_to_consider.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_for_iops {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_for_iops.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_for_iops_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_for_iops_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_for_iops_bitrate_read_mbps {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_for_iops_bitrate_read_mbps.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_for_iops_bitrate_read_mbps_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_for_iops_bitrate_read_mbps_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_for_iops_bitrate_write_mbps {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_for_iops_bitrate_write_mbps.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_for_iops_bitrate_write_mbps_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_for_iops_bitrate_write_mbps_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_for_memory_usage {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_for_memory_usage.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_for_memory_usage_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_for_memory_usage_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_for_min_memory_usage {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_for_min_memory_usage.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_for_min_memory_usage_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_for_min_memory_usage_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_for_response_time {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_for_response_time.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_for_response_time_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_for_response_time_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_for_static_optimization {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_for_static_optimization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_for_static_optimization_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_for_static_optimization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_iops_info {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_iops_info.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_iops_info_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_iops_info_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_iops_network {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_iops_network.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_iops_network_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_iops_network_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_memory_usage_on_dates_to_consider {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_memory_usage_on_dates_to_consider.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_min_memory_usage_on_dates_to_consider {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_min_memory_usage_on_dates_to_consider.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_network_rate {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_network_rate.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_network_rate_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_network_rate_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_network_usage_on_dates_to_consider {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_network_usage_on_dates_to_consider.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_response_time_on_dates_to_consider {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_response_time_on_dates_to_consider.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_large_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_large_cpu_utilization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_large_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_large_cpu_utilization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_large_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_large_credit_balance.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_large_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_large_credit_balance_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_medium_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_medium_cpu_utilization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_medium_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_medium_cpu_utilization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_medium_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_medium_credit_balance.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_medium_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_medium_credit_balance_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_micro_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_micro_cpu_utilization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_micro_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_micro_cpu_utilization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_micro_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_micro_credit_balance.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_micro_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_micro_credit_balance_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_nano_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_nano_cpu_utilization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_nano_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_nano_cpu_utilization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_nano_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_nano_credit_balance.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_nano_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_nano_credit_balance_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_small_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_small_cpu_utilization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_small_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_small_cpu_utilization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_small_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_small_credit_balance.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_peak_t2_small_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${hourly_peak_t2_small_credit_balance_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: http_process_name_details {
  join: customers {
    type: left_outer
    sql_on: ${http_process_name_details.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hyperv_host_spec_cpu2006 {
  join: customers {
    type: left_outer
    sql_on: ${hyperv_host_spec_cpu2006.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: hyperv_vm_name_map {
  join: customers {
    type: left_outer
    sql_on: ${hyperv_vm_name_map.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: ignore_times_algorithms {
  join: customers {
    type: left_outer
    sql_on: ${ignore_times_algorithms.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: instance_assessment_status_log {
  join: customers {
    type: left_outer
    sql_on: ${instance_assessment_status_log.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: instance_type_mapping {}

explore: java_process_details {}

explore: jvm_min_memory_usage4 {
  join: customers {
    type: left_outer
    sql_on: ${jvm_min_memory_usage4.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: logical_volume_to_volume_group {
  join: customers {
    type: left_outer
    sql_on: ${logical_volume_to_volume_group.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: machine_info {
  join: customers {
    type: left_outer
    sql_on: ${machine_info.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: memory_usage_bands {
  join: customers {
    type: left_outer
    sql_on: ${memory_usage_bands.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: metric_details {
  join: customers {
    type: left_outer
    sql_on: ${metric_details.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: network_pricing {}

explore: network_rate_plan {}

explore: node_data_collection_status {
  join: customers {
    type: left_outer
    sql_on: ${node_data_collection_status.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: node_recommendation {
  join: customers {
    type: left_outer
    sql_on: ${node_recommendation.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: node_running_state {
  join: customers {
    type: left_outer
    sql_on: ${node_running_state.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: on_off_cache {
  join: customers {
    type: left_outer
    sql_on: ${on_off_cache.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: on_off_ignore_times {
  join: customers {
    type: left_outer
    sql_on: ${on_off_ignore_times.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: ondemand_optimized_ebs_rate_plan_history_v2 {}

explore: ondemand_optimized_ebs_rate_plan_history_v3 {}

explore: ondemand_optimized_ebs_rate_plan_v2 {}

explore: ondemand_optimized_ebs_rate_plan_v3 {}

explore: ondemand_rate_plan {}

explore: ondemand_rate_plan_history_v2 {}

explore: ondemand_rate_plan_history_v3 {}

explore: ondemand_rate_plan_v2 {}

explore: ondemand_rate_plan_v3 {}

explore: ondemand_rate_plan_v3_9_dec_18 {}

explore: ondemand_rate_plan_v4 {}

explore: ondemand_rate_plan_v5 {}

explore: onprem_running_stats {
  join: customers {
    type: left_outer
    sql_on: ${onprem_running_stats.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: onprem_storage_mapping_details {
  join: customers {
    type: left_outer
    sql_on: ${onprem_storage_mapping_details.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: other_client_names {
  join: customers {
    type: left_outer
    sql_on: ${other_client_names.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: other_server_names {
  join: customers {
    type: left_outer
    sql_on: ${other_server_names.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: overall_component_utilization {
  join: customers {
    type: left_outer
    sql_on: ${overall_component_utilization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: overall_component_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${overall_component_utilization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: overall_component_utilization_with_tag {
  join: customers {
    type: left_outer
    sql_on: ${overall_component_utilization_with_tag.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: overall_component_utilization_with_tag_60 {
  join: customers {
    type: left_outer
    sql_on: ${overall_component_utilization_with_tag_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: peak_utilization {
  join: customers {
    type: left_outer
    sql_on: ${peak_utilization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: peak_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${peak_utilization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: peak_utilization_for_iops_60 {
  join: customers {
    type: left_outer
    sql_on: ${peak_utilization_for_iops_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: peak_utilization_for_tag_60 {
  join: customers {
    type: left_outer
    sql_on: ${peak_utilization_for_tag_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: peak_utilization_with_tag {
  join: customers {
    type: left_outer
    sql_on: ${peak_utilization_with_tag.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: plan_details {
  join: customers {
    type: left_outer
    sql_on: ${plan_details.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: plan_details_for_azure {
  join: customers {
    type: left_outer
    sql_on: ${plan_details_for_azure.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: plan_details_for_google {
  join: customers {
    type: left_outer
    sql_on: ${plan_details_for_google.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: planning_rules {
  join: customers {
    type: left_outer
    sql_on: ${planning_rules.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: port_based_info {
  join: customers {
    type: left_outer
    sql_on: ${port_based_info.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_cpu_usage {
  join: customers {
    type: left_outer
    sql_on: ${predicted_cpu_usage.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_cpu_usage_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_cpu_usage_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_cpu_usage_on_dates_array {
  join: customers {
    type: left_outer
    sql_on: ${predicted_cpu_usage_on_dates_array.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_cpu_usage_on_dates_to_consider {
  join: customers {
    type: left_outer
    sql_on: ${predicted_cpu_usage_on_dates_to_consider.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_disk_bit_rate {
  join: customers {
    type: left_outer
    sql_on: ${predicted_disk_bit_rate.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_disk_bit_rate_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_disk_bit_rate_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_disk_capacity {
  join: customers {
    type: left_outer
    sql_on: ${predicted_disk_capacity.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_disk_occupancy {
  join: customers {
    type: left_outer
    sql_on: ${predicted_disk_occupancy.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_disk_occupancy_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_disk_occupancy_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_disk_usage {
  join: customers {
    type: left_outer
    sql_on: ${predicted_disk_usage.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_disk_usage_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_disk_usage_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_disk_usage_on_dates_array {
  join: customers {
    type: left_outer
    sql_on: ${predicted_disk_usage_on_dates_array.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_disk_usage_on_dates_to_consider {
  join: customers {
    type: left_outer
    sql_on: ${predicted_disk_usage_on_dates_to_consider.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_gp_ssd_bucket {
  join: customers {
    type: left_outer
    sql_on: ${predicted_gp_ssd_bucket.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_gp_ssd_bucket_occupancy {
  join: customers {
    type: left_outer
    sql_on: ${predicted_gp_ssd_bucket_occupancy.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_bitrate_read_mbps {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_bitrate_read_mbps.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_bitrate_read_mbps_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_bitrate_read_mbps_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_bitrate_write_mbps {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_bitrate_write_mbps.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_bitrate_write_mbps_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_bitrate_write_mbps_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_info {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_info.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_info_12 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_info_12.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_info_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_info_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_latency_read {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_latency_read.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_latency_read_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_latency_read_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_latency_write {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_latency_write.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_latency_write_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_latency_write_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_network {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_network.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_network_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_network_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_queue {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_queue.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_queue_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_queue_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_read {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_read.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_read_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_read_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_thruput_read {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_thruput_read.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_thruput_read_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_thruput_read_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_thruput_write {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_thruput_write.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_thruput_write_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_thruput_write_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_write {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_write.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_iops_write_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_iops_write_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_memory_usage {
  join: customers {
    type: left_outer
    sql_on: ${predicted_memory_usage.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_memory_usage_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_memory_usage_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_memory_usage_on_dates_array {
  join: customers {
    type: left_outer
    sql_on: ${predicted_memory_usage_on_dates_array.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_memory_usage_on_dates_to_consider {
  join: customers {
    type: left_outer
    sql_on: ${predicted_memory_usage_on_dates_to_consider.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_min_memory_usage {
  join: customers {
    type: left_outer
    sql_on: ${predicted_min_memory_usage.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_min_memory_usage_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_min_memory_usage_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_min_memory_usage_on_dates_array {
  join: customers {
    type: left_outer
    sql_on: ${predicted_min_memory_usage_on_dates_array.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_min_memory_usage_on_dates_to_consider {
  join: customers {
    type: left_outer
    sql_on: ${predicted_min_memory_usage_on_dates_to_consider.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_network_bit_rate {
  join: customers {
    type: left_outer
    sql_on: ${predicted_network_bit_rate.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_network_rate {
  join: customers {
    type: left_outer
    sql_on: ${predicted_network_rate.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_network_rate_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_network_rate_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_network_usage {
  join: customers {
    type: left_outer
    sql_on: ${predicted_network_usage.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_network_usage_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_network_usage_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_network_usage_on_dates_array {
  join: customers {
    type: left_outer
    sql_on: ${predicted_network_usage_on_dates_array.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_network_usage_on_dates_to_consider {
  join: customers {
    type: left_outer
    sql_on: ${predicted_network_usage_on_dates_to_consider.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_nfs_disk_bit_rate {
  join: customers {
    type: left_outer
    sql_on: ${predicted_nfs_disk_bit_rate.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_nfs_disk_bit_rate_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_nfs_disk_bit_rate_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_response_time {
  join: customers {
    type: left_outer
    sql_on: ${predicted_response_time.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_response_time_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_response_time_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_response_time_on_dates_array {
  join: customers {
    type: left_outer
    sql_on: ${predicted_response_time_on_dates_array.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_large_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_large_cpu_utilization.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_large_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_large_cpu_utilization_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_large_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_large_credit_balance.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_large_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_large_credit_balance_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_medium_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_medium_cpu_utilization.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_medium_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_medium_cpu_utilization_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_medium_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_medium_credit_balance.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_medium_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_medium_credit_balance_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_micro_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_micro_cpu_utilization.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_micro_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_micro_cpu_utilization_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_micro_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_micro_credit_balance.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_micro_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_micro_credit_balance_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_nano_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_nano_cpu_utilization.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_nano_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_nano_cpu_utilization_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_nano_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_nano_credit_balance.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_nano_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_nano_credit_balance_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_small_cpu_utilization {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_small_cpu_utilization.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_small_cpu_utilization_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_small_cpu_utilization_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_small_credit_balance {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_small_credit_balance.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: predicted_t2_small_credit_balance_60 {
  join: customers {
    type: left_outer
    sql_on: ${predicted_t2_small_credit_balance_60.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: price_order {}

explore: price_order_for_ondemand {}

explore: process_name_details {
  join: customers {
    type: left_outer
    sql_on: ${process_name_details.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: python_process_details {}

explore: python_test {}

explore: recommendations_for_component_optimization {
  join: customers {
    type: left_outer
    sql_on: ${recommendations_for_component_optimization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: recommendations_for_component_optimization_60 {
  join: customers {
    type: left_outer
    sql_on: ${recommendations_for_component_optimization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: recommendations_for_static_optimization {
  join: customers {
    type: left_outer
    sql_on: ${recommendations_for_static_optimization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: recommendations_for_static_optimization_60 {
  join: customers {
    type: left_outer
    sql_on: ${recommendations_for_static_optimization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: reserved_rate_plan {}

explore: reserved_rate_plan_history_v2 {}

explore: reserved_rate_plan_history_v3 {}

explore: reserved_rate_plan_v2 {}

explore: reserved_rate_plan_v3 {}

explore: reserved_rate_plan_v3_9_dec_18 {}

explore: reserved_rate_plan_v5 {}

explore: server_process_info {
  join: customers {
    type: left_outer
    sql_on: ${server_process_info.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: web_site_info {
    type: left_outer
    sql_on: ${server_process_info.web_site_info_id} = ${web_site_info.id} ;;
    relationship: many_to_one
  }
}

explore: service_name_details {}

explore: spot_rate_plan {}

explore: spot_rate_plan_history {}

explore: spot_rate_plan_history_v2 {}

explore: spot_rate_plan_v2 {}

explore: t2_scalings {
  join: customers {
    type: left_outer
    sql_on: ${t2_scalings.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: tables_with_asset_and_components {}

explore: tcltk_process_details {}

explore: uploaded_vcenter_host_info {
  join: customers {
    type: left_outer
    sql_on: ${uploaded_vcenter_host_info.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: uploaded_vcenter_vm_info {
  join: customers {
    type: left_outer
    sql_on: ${uploaded_vcenter_vm_info.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: utilization_statistics_for_static_optimization {
  join: customers {
    type: left_outer
    sql_on: ${utilization_statistics_for_static_optimization.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: utilization_statistics_for_static_optimization_60 {
  join: customers {
    type: left_outer
    sql_on: ${utilization_statistics_for_static_optimization_60.customerid} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: uuid_device_mapping {
  join: customers {
    type: left_outer
    sql_on: ${uuid_device_mapping.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vcenter_error_summary {
  join: customers {
    type: left_outer
    sql_on: ${vcenter_error_summary.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_5min_avg_vm_net_usage_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_5min_avg_vm_net_usage_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_cpu_mapping_details {
  join: customers {
    type: left_outer
    sql_on: ${vmware_cpu_mapping_details.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_cpu_mapping_details_component_v2 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_cpu_mapping_details_component_v2.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_cpu_mapping_details_v2 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_cpu_mapping_details_v2.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_data_lifecycle_email_info {
  join: customers {
    type: left_outer
    sql_on: ${vmware_data_lifecycle_email_info.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_email_lists {
  join: customers {
    type: left_outer
    sql_on: ${vmware_email_lists.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_email_templates {}

explore: vmware_errors_data_summary {
  join: customers {
    type: left_outer
    sql_on: ${vmware_errors_data_summary.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_host_system_info {
  join: customers {
    type: left_outer
    sql_on: ${vmware_host_system_info.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_multimounted_disks_to_ignore {
  join: customers {
    type: left_outer
    sql_on: ${vmware_multimounted_disks_to_ignore.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_network_mapping_details {
  join: customers {
    type: left_outer
    sql_on: ${vmware_network_mapping_details.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_nonvirtual_disk_info {
  join: customers {
    type: left_outer
    sql_on: ${vmware_nonvirtual_disk_info.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_one_2_one_mapping {
  join: customers {
    type: left_outer
    sql_on: ${vmware_one_2_one_mapping.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_onprem_systems {
  join: customers {
    type: left_outer
    sql_on: ${vmware_onprem_systems.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_proxy_installers {}

explore: vmware_proxy_installers_pre_20150228 {}

explore: vmware_realtime_vm_cpu_idle_summation {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_idle_summation.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_cpu_idle_summation_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_idle_summation_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_cpu_idle_summation_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_idle_summation_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_cpu_ready_summation {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_ready_summation.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_cpu_ready_summation_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_ready_summation_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_cpu_ready_summation_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_ready_summation_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_cpu_usage_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_usage_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_cpu_usage_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_usage_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_cpu_usage_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_usage_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_cpu_usagemhz_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_usagemhz_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_cpu_usagemhz_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_usagemhz_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_cpu_usagemhz_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_usagemhz_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_cpu_wait_summation {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_wait_summation.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_cpu_wait_summation_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_wait_summation_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_cpu_wait_summation_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_cpu_wait_summation_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_num_read_summation {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_num_read_summation.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_num_read_summation_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_num_read_summation_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_num_read_summation_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_num_read_summation_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_num_write_summation {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_num_write_summation.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_num_write_summation_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_num_write_summation_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_num_write_summation_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_num_write_summation_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_read_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_read_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_read_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_read_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_read_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_read_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_usage_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_usage_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_usage_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_usage_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_usage_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_usage_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_write_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_write_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_write_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_write_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_disk_write_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_disk_write_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_mem_active_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_mem_active_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_mem_active_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_mem_active_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_mem_active_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_mem_active_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_net_received_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_net_received_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_net_received_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_net_received_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_net_received_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_net_received_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_net_transmitted_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_net_transmitted_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_net_transmitted_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_net_transmitted_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_net_transmitted_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_net_transmitted_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_net_usage_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_net_usage_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_net_usage_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_net_usage_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_net_usage_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_net_usage_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_number_read_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_number_read_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_number_read_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_number_read_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_number_read_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_number_read_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_number_write_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_number_write_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_number_write_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_number_write_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_number_write_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_number_write_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_read_oio_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_read_oio_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_read_oio_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_read_oio_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_read_oio_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_read_oio_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_read_rate_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_read_rate_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_read_rate_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_read_rate_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_read_rate_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_read_rate_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_totalreadlatency_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_totalreadlatency_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_totalreadlatency_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_totalreadlatency_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_totalreadlatency_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_totalreadlatency_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_totalwritelatency_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_totalwritelatency_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_totalwritelatency_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_totalwritelatency_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_totalwritelatency_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_totalwritelatency_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_write_oio_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_write_oio_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_write_oio_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_write_oio_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_write_oio_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_write_oio_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_write_rate_average {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_write_rate_average.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_write_rate_average_31118 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_write_rate_average_31118.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_realtime_vm_vdisk_write_rate_average_35095 {
  join: customers {
    type: left_outer
    sql_on: ${vmware_realtime_vm_vdisk_write_rate_average_35095.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_status_check {
  join: customers {
    type: left_outer
    sql_on: ${vmware_status_check.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_status_info_messages {}

explore: vmware_storage_mapping {
  join: customers {
    type: left_outer
    sql_on: ${vmware_storage_mapping.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: vmware_storage_mapping_details {
  join: customers {
    type: left_outer
    sql_on: ${vmware_storage_mapping_details.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: web_app_mapping {
  join: customers {
    type: left_outer
    sql_on: ${web_app_mapping.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: server_process_info {
    type: left_outer
    sql_on: ${web_app_mapping.server_process_info_id} = ${server_process_info.id} ;;
    relationship: many_to_one
  }

  join: http_process_name_details {
    type: left_outer
    sql_on: ${web_app_mapping.http_process_name_details_id} = ${http_process_name_details.id} ;;
    relationship: many_to_one
  }

  join: web_site_info {
    type: left_outer
    sql_on: ${server_process_info.web_site_info_id} = ${web_site_info.id} ;;
    relationship: many_to_one
  }
}
