view: vmware_cpu_mapping_details {
  sql_table_name: public.vmware_cpu_mapping_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: annual_cost {
    type: number
    sql: ${TABLE}.annual_cost ;;
  }

  dimension: asset_id {
    type: number
    sql: ${TABLE}.asset_id ;;
  }

  dimension: asset_name {
    type: string
    sql: ${TABLE}.asset_name ;;
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

  dimension: resource_pool_id {
    type: string
    sql: ${TABLE}.resource_pool_id ;;
  }

  dimension: resource_pool_name {
    type: string
    sql: ${TABLE}.resource_pool_name ;;
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
      asset_name,
      component_name,
      data_center_name,
      resource_pool_name,
      vm_name,
      customers.id,
      customers.name
    ]
  }
}
