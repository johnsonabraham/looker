view: ec2_instance_type_info {
  sql_table_name: public.ec2_instance_type_info ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: acceptable_memory_gb {
    type: number
    sql: ${TABLE}.acceptable_memory_gb ;;
  }

  dimension: acceptable_memory_gb_95 {
    type: number
    sql: ${TABLE}.acceptable_memory_gb_95 ;;
  }

  dimension: available_memory_gb {
    type: number
    sql: ${TABLE}.available_memory_gb ;;
  }

  dimension: aws_ebs_opt_by_default {
    type: yesno
    sql: ${TABLE}.aws_ebs_opt_by_default ;;
  }

  dimension: cloudamize_spec {
    type: number
    sql: ${TABLE}.cloudamize_spec ;;
  }

  dimension: cpu_details {
    type: string
    sql: ${TABLE}.cpu_details ;;
  }

  dimension: egress_network_cap_bps {
    type: number
    sql: ${TABLE}.egress_network_cap_bps ;;
  }

  dimension: generation {
    type: number
    sql: ${TABLE}.generation ;;
  }

  dimension: ingress_network_cap_bps {
    type: number
    sql: ${TABLE}.ingress_network_cap_bps ;;
  }

  dimension: instance_store_disk_size_gb {
    type: number
    sql: ${TABLE}.instance_store_disk_size_gb ;;
  }

  dimension: instance_store_is_ssd {
    type: yesno
    sql: ${TABLE}.instance_store_is_ssd ;;
  }

  dimension: instance_store_number_disks {
    type: number
    sql: ${TABLE}.instance_store_number_disks ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension: is_recommended_generation {
    type: yesno
    sql: ${TABLE}.is_recommended_generation ;;
  }

  dimension: max_iops_per_disk {
    type: number
    sql: ${TABLE}.max_iops_per_disk ;;
  }

  dimension: max_num_disks {
    type: number
    sql: ${TABLE}.max_num_disks ;;
  }

  dimension: network_speed {
    type: number
    sql: ${TABLE}.network_speed ;;
  }

  dimension: network_speed_bps {
    type: number
    sql: ${TABLE}.network_speed_bps ;;
  }

  dimension: num_nics {
    type: number
    sql: ${TABLE}.num_nics ;;
  }

  dimension: number_ec2_vcpus {
    type: number
    sql: ${TABLE}.number_ec2_vcpus ;;
  }

  dimension: number_ecpus {
    type: number
    sql: ${TABLE}.number_ecpus ;;
  }

  dimension: opti_ebs_network_speed_bps {
    type: number
    sql: ${TABLE}.opti_ebs_network_speed_bps ;;
  }

  dimension: optimized_ebs_available {
    type: yesno
    sql: ${TABLE}.optimized_ebs_available ;;
  }

  dimension: premium_storage_iops {
    type: number
    sql: ${TABLE}.premium_storage_iops ;;
  }

  dimension: premium_storage_mbytes_rate {
    type: number
    sql: ${TABLE}.premium_storage_mbytes_rate ;;
  }

  dimension: spec_cpu2006_rate {
    type: number
    sql: ${TABLE}.spec_cpu2006_rate ;;
  }

  dimension: std_ebs_network_speed_bps {
    type: number
    sql: ${TABLE}.std_ebs_network_speed_bps ;;
  }

  dimension: vendor {
    type: number
    sql: ${TABLE}.vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
