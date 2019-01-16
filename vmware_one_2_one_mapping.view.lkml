view: vmware_one_2_one_mapping {
  sql_table_name: public.vmware_one_2_one_mapping ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: allocated_memory_gb {
    type: number
    sql: ${TABLE}.allocated_memory_gb ;;
  }

  dimension: azure_acceptable_memory_gb {
    type: number
    sql: ${TABLE}.azure_acceptable_memory_gb ;;
  }

  dimension: azure_available_memory_gb {
    type: number
    sql: ${TABLE}.azure_available_memory_gb ;;
  }

  dimension: azure_bottleneck {
    type: string
    sql: ${TABLE}.azure_bottleneck ;;
  }

  dimension: azure_instance_type {
    type: string
    sql: ${TABLE}.azure_instance_type ;;
  }

  dimension: azure_vcpus {
    type: number
    sql: ${TABLE}.azure_vcpus ;;
  }

  dimension: bottleneck {
    type: string
    sql: ${TABLE}.bottleneck ;;
  }

  dimension: bottleneck_azure {
    type: string
    sql: ${TABLE}.bottleneck_azure ;;
  }

  dimension: bottleneck_google {
    type: string
    sql: ${TABLE}.bottleneck_google ;;
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

  dimension: ec2_acceptable_memory_gb {
    type: number
    sql: ${TABLE}.ec2_acceptable_memory_gb ;;
  }

  dimension: ec2_available_memory_gb {
    type: number
    sql: ${TABLE}.ec2_available_memory_gb ;;
  }

  dimension: ec2_instance_type {
    type: string
    sql: ${TABLE}.ec2_instance_type ;;
  }

  dimension: ec2_normalized_processing_power {
    type: number
    sql: ${TABLE}.ec2_normalized_processing_power ;;
  }

  dimension: ec2_vcpus {
    type: number
    sql: ${TABLE}.ec2_vcpus ;;
  }

  dimension: google_acceptable_memory_gb {
    type: number
    sql: ${TABLE}.google_acceptable_memory_gb ;;
  }

  dimension: google_available_memory_gb {
    type: number
    sql: ${TABLE}.google_available_memory_gb ;;
  }

  dimension: google_bottleneck {
    type: string
    sql: ${TABLE}.google_bottleneck ;;
  }

  dimension: google_instance_type {
    type: string
    sql: ${TABLE}.google_instance_type ;;
  }

  dimension: google_vcpus {
    type: number
    sql: ${TABLE}.google_vcpus ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }

  dimension: hyperv_nics {
    type: string
    sql: ${TABLE}.hyperv_nics ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: is_eligible_for_azure {
    type: yesno
    sql: ${TABLE}.is_eligible_for_azure ;;
  }

  dimension: is_eligible_for_ec2 {
    type: yesno
    sql: ${TABLE}.is_eligible_for_ec2 ;;
  }

  dimension: is_eligible_for_google {
    type: yesno
    sql: ${TABLE}.is_eligible_for_google ;;
  }

  dimension: memory_bus_speed_mhz {
    type: number
    sql: ${TABLE}.memory_bus_speed_mhz ;;
  }

  dimension: normalized_processing_power {
    type: number
    sql: ${TABLE}.normalized_processing_power ;;
  }

  dimension: num_threads_on_chip {
    type: number
    sql: ${TABLE}.num_threads_on_chip ;;
  }

  dimension: num_vcpus {
    type: number
    sql: ${TABLE}.num_vcpus ;;
  }

  dimension: on_cloud {
    type: string
    sql: ${TABLE}.on_cloud ;;
  }

  dimension: processor {
    type: string
    sql: ${TABLE}.processor ;;
  }

  dimension: processor_clock_rate_mhz {
    type: number
    sql: ${TABLE}.processor_clock_rate_mhz ;;
  }

  dimension: processor_family {
    type: string
    sql: ${TABLE}.processor_family ;;
  }

  dimension: processor_manufacturer {
    type: string
    sql: ${TABLE}.processor_manufacturer ;;
  }

  dimension_group: processor_release {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.processor_release_date ;;
  }

  dimension: processor_tdp {
    type: number
    sql: ${TABLE}.processor_tdp ;;
  }

  dimension: raw_cpu_model {
    type: string
    sql: ${TABLE}.raw_cpu_model ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  dimension: reason_azure {
    type: string
    sql: ${TABLE}.reason_azure ;;
  }

  dimension: reason_google {
    type: string
    sql: ${TABLE}.reason_google ;;
  }

  dimension: resourcepool_id {
    type: string
    sql: ${TABLE}.resourcepool_id ;;
  }

  dimension: resourcepool_name {
    type: string
    sql: ${TABLE}.resourcepool_name ;;
  }

  dimension: spec_machine_match {
    type: number
    sql: ${TABLE}.spec_machine_match ;;
  }

  dimension: sql_server_core_factor {
    type: number
    sql: ${TABLE}.sql_server_core_factor ;;
  }

  dimension: system_model {
    type: string
    sql: ${TABLE}.system_model ;;
  }

  dimension: system_vendor {
    type: string
    sql: ${TABLE}.system_vendor ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_on ;;
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

  dimension: vm_overhead {
    type: number
    sql: ${TABLE}.vm_overhead ;;
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
      datacenter_name,
      resourcepool_name,
      vm_name,
      customers.id,
      customers.name
    ]
  }
}
