view: aws_bucket_provisioned_storage_mapping {
  sql_table_name: public.aws_bucket_provisioned_storage_mapping ;;

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

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: ebs_available_iops {
    type: number
    sql: ${TABLE}.ebs_available_iops ;;
  }

  dimension: ebs_available_throughput_bytes_per_sec {
    type: number
    sql: ${TABLE}.ebs_available_throughput_bytes_per_sec ;;
  }

  dimension: ebs_capacity_gb {
    type: number
    sql: ${TABLE}.ebs_capacity_gb ;;
  }

  dimension: ebs_io_cost {
    type: number
    sql: ${TABLE}.ebs_io_cost ;;
  }

  dimension: ebs_iops_per_month {
    type: number
    sql: ${TABLE}.ebs_iops_per_month ;;
  }

  dimension: ebs_num_vols_allowed {
    type: number
    sql: ${TABLE}.ebs_num_vols_allowed ;;
  }

  dimension: ebs_required_peak_iops {
    type: number
    sql: ${TABLE}.ebs_required_peak_iops ;;
  }

  dimension: ebs_storage_cost {
    type: number
    sql: ${TABLE}.ebs_storage_cost ;;
  }

  dimension: ebs_total_cost {
    type: number
    sql: ${TABLE}.ebs_total_cost ;;
  }

  dimension: gp2_annual_cost {
    type: number
    sql: ${TABLE}.gp2_annual_cost ;;
  }

  dimension: gp2_available_burst_iops {
    type: number
    sql: ${TABLE}.gp2_available_burst_iops ;;
  }

  dimension: gp2_available_max_throughput_bytes_per_sec {
    type: number
    sql: ${TABLE}.gp2_available_max_throughput_bytes_per_sec ;;
  }

  dimension: gp2_baseline_iops {
    type: number
    sql: ${TABLE}.gp2_baseline_iops ;;
  }

  dimension: gp2_bucket_capacity_ops {
    type: number
    sql: ${TABLE}.gp2_bucket_capacity_ops ;;
  }

  dimension: gp2_bucketless_annual_cost {
    type: number
    sql: ${TABLE}.gp2_bucketless_annual_cost ;;
  }

  dimension: gp2_bucketless_available_burst_iops {
    type: number
    sql: ${TABLE}.gp2_bucketless_available_burst_iops ;;
  }

  dimension: gp2_bucketless_available_max_throughput_bytes_per_sec {
    type: number
    sql: ${TABLE}.gp2_bucketless_available_max_throughput_bytes_per_sec ;;
  }

  dimension: gp2_bucketless_baseline_iops {
    type: number
    sql: ${TABLE}.gp2_bucketless_baseline_iops ;;
  }

  dimension: gp2_bucketless_bucket_capacity_gb {
    type: number
    sql: ${TABLE}.gp2_bucketless_bucket_capacity_gb ;;
  }

  dimension: gp2_bucketless_capacity_gb {
    type: number
    sql: ${TABLE}.gp2_bucketless_capacity_gb ;;
  }

  dimension: gp2_bucketless_number_of_volumes {
    type: number
    sql: ${TABLE}.gp2_bucketless_number_of_volumes ;;
  }

  dimension: gp2_bucketless_required_capacity_for_performance {
    type: number
    sql: ${TABLE}.gp2_bucketless_required_capacity_for_performance ;;
  }

  dimension: gp2_number_of_volumes {
    type: number
    sql: ${TABLE}.gp2_number_of_volumes ;;
  }

  dimension: gp2_required_capacity_for_performance {
    type: number
    sql: ${TABLE}.gp2_required_capacity_for_performance ;;
  }

  dimension: gp2_required_peak_iops {
    type: number
    sql: ${TABLE}.gp2_required_peak_iops ;;
  }

  dimension: gp2_storage_capacity_gb {
    type: number
    sql: ${TABLE}.gp2_storage_capacity_gb ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: num_ebs_vols {
    type: number
    sql: ${TABLE}.num_ebs_vols ;;
  }

  dimension: num_ebs_vols_capacity {
    type: number
    sql: ${TABLE}.num_ebs_vols_capacity ;;
  }

  dimension: num_ebs_vols_for_iops {
    type: number
    sql: ${TABLE}.num_ebs_vols_for_iops ;;
  }

  dimension: num_ebs_vols_for_throughput {
    type: number
    sql: ${TABLE}.num_ebs_vols_for_throughput ;;
  }

  dimension: piops_available_max_iops {
    type: number
    sql: ${TABLE}.piops_available_max_iops ;;
  }

  dimension: piops_available_max_throughput {
    type: number
    sql: ${TABLE}.piops_available_max_throughput ;;
  }

  dimension: piops_capacity_gb {
    type: number
    sql: ${TABLE}.piops_capacity_gb ;;
  }

  dimension: piops_io_cost {
    type: number
    sql: ${TABLE}.piops_io_cost ;;
  }

  dimension: piops_number_of_volumes {
    type: number
    sql: ${TABLE}.piops_number_of_volumes ;;
  }

  dimension: piops_required_peak_iops {
    type: number
    sql: ${TABLE}.piops_required_peak_iops ;;
  }

  dimension: piops_storage_cost {
    type: number
    sql: ${TABLE}.piops_storage_cost ;;
  }

  dimension: piops_total_cost {
    type: number
    sql: ${TABLE}.piops_total_cost ;;
  }

  dimension: plan_id {
    type: number
    sql: ${TABLE}.plan_id ;;
  }

  dimension: sc1_annual_cost {
    type: number
    sql: ${TABLE}.sc1_annual_cost ;;
  }

  dimension: sc1_available_burst_iops {
    type: number
    sql: ${TABLE}.sc1_available_burst_iops ;;
  }

  dimension: sc1_available_burst_throughput_bytes_per_sec {
    type: number
    sql: ${TABLE}.sc1_available_burst_throughput_bytes_per_sec ;;
  }

  dimension: sc1_baseline_iops {
    type: number
    sql: ${TABLE}.sc1_baseline_iops ;;
  }

  dimension: sc1_baseline_throughput_bytes_per_sec {
    type: number
    sql: ${TABLE}.sc1_baseline_throughput_bytes_per_sec ;;
  }

  dimension: sc1_bucket_capacity_ops {
    type: number
    sql: ${TABLE}.sc1_bucket_capacity_ops ;;
  }

  dimension: sc1_bucketless_annual_cost {
    type: number
    sql: ${TABLE}.sc1_bucketless_annual_cost ;;
  }

  dimension: sc1_bucketless_available_burst_iops {
    type: number
    sql: ${TABLE}.sc1_bucketless_available_burst_iops ;;
  }

  dimension: sc1_bucketless_available_burst_throughput_bytes_per_sec {
    type: number
    sql: ${TABLE}.sc1_bucketless_available_burst_throughput_bytes_per_sec ;;
  }

  dimension: sc1_bucketless_baseline_iops {
    type: number
    sql: ${TABLE}.sc1_bucketless_baseline_iops ;;
  }

  dimension: sc1_bucketless_baseline_throughput_bytes_per_sec {
    type: number
    sql: ${TABLE}.sc1_bucketless_baseline_throughput_bytes_per_sec ;;
  }

  dimension: sc1_bucketless_bucket_capacity_gb {
    type: number
    sql: ${TABLE}.sc1_bucketless_bucket_capacity_gb ;;
  }

  dimension: sc1_bucketless_capacity_gb {
    type: number
    sql: ${TABLE}.sc1_bucketless_capacity_gb ;;
  }

  dimension: sc1_bucketless_number_of_volumes {
    type: number
    sql: ${TABLE}.sc1_bucketless_number_of_volumes ;;
  }

  dimension: sc1_bucketless_required_capacity_for_performance {
    type: number
    sql: ${TABLE}.sc1_bucketless_required_capacity_for_performance ;;
  }

  dimension: sc1_number_of_volumes {
    type: number
    sql: ${TABLE}.sc1_number_of_volumes ;;
  }

  dimension: sc1_required_capacity_for_performance {
    type: number
    sql: ${TABLE}.sc1_required_capacity_for_performance ;;
  }

  dimension: sc1_required_peak_iops {
    type: number
    sql: ${TABLE}.sc1_required_peak_iops ;;
  }

  dimension: sc1_storage_capacity_gb {
    type: number
    sql: ${TABLE}.sc1_storage_capacity_gb ;;
  }

  dimension: st1_annual_cost {
    type: number
    sql: ${TABLE}.st1_annual_cost ;;
  }

  dimension: st1_available_burst_iops {
    type: number
    sql: ${TABLE}.st1_available_burst_iops ;;
  }

  dimension: st1_available_burst_throughput_bytes_per_sec {
    type: number
    sql: ${TABLE}.st1_available_burst_throughput_bytes_per_sec ;;
  }

  dimension: st1_baseline_iops {
    type: number
    sql: ${TABLE}.st1_baseline_iops ;;
  }

  dimension: st1_baseline_throughput_bytes_per_sec {
    type: number
    sql: ${TABLE}.st1_baseline_throughput_bytes_per_sec ;;
  }

  dimension: st1_bucket_capacity_ops {
    type: number
    sql: ${TABLE}.st1_bucket_capacity_ops ;;
  }

  dimension: st1_bucketless_annual_cost {
    type: number
    sql: ${TABLE}.st1_bucketless_annual_cost ;;
  }

  dimension: st1_bucketless_available_burst_iops {
    type: number
    sql: ${TABLE}.st1_bucketless_available_burst_iops ;;
  }

  dimension: st1_bucketless_available_burst_throughput_bytes_per_sec {
    type: number
    sql: ${TABLE}.st1_bucketless_available_burst_throughput_bytes_per_sec ;;
  }

  dimension: st1_bucketless_baseline_iops {
    type: number
    sql: ${TABLE}.st1_bucketless_baseline_iops ;;
  }

  dimension: st1_bucketless_baseline_throughput_bytes_per_sec {
    type: number
    sql: ${TABLE}.st1_bucketless_baseline_throughput_bytes_per_sec ;;
  }

  dimension: st1_bucketless_bucket_capacity_gb {
    type: number
    sql: ${TABLE}.st1_bucketless_bucket_capacity_gb ;;
  }

  dimension: st1_bucketless_capacity_gb {
    type: number
    sql: ${TABLE}.st1_bucketless_capacity_gb ;;
  }

  dimension: st1_bucketless_number_of_volumes {
    type: number
    sql: ${TABLE}.st1_bucketless_number_of_volumes ;;
  }

  dimension: st1_bucketless_required_capacity_for_performance {
    type: number
    sql: ${TABLE}.st1_bucketless_required_capacity_for_performance ;;
  }

  dimension: st1_number_of_volumes {
    type: number
    sql: ${TABLE}.st1_number_of_volumes ;;
  }

  dimension: st1_required_capacity_for_performance {
    type: number
    sql: ${TABLE}.st1_required_capacity_for_performance ;;
  }

  dimension: st1_required_peak_iops {
    type: number
    sql: ${TABLE}.st1_required_peak_iops ;;
  }

  dimension: st1_storage_capacity_gb {
    type: number
    sql: ${TABLE}.st1_storage_capacity_gb ;;
  }

  measure: count {
    type: count
    drill_fields: [id, display_name, customers.id, customers.name]
  }
}
