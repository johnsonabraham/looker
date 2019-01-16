view: vmware_storage_mapping_details_old {
  sql_table_name: public.vmware_storage_mapping_details_old ;;

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

  dimension: ebs_annual_cost {
    type: number
    sql: ${TABLE}.ebs_annual_cost ;;
  }

  dimension: ebs_occupancy_gb {
    type: number
    sql: ${TABLE}.ebs_occupancy_gb ;;
  }

  dimension: iops_annual_cost {
    type: number
    sql: ${TABLE}.iops_annual_cost ;;
  }

  dimension: iops_per_month {
    type: number
    sql: ${TABLE}.iops_per_month ;;
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

  dimension: total_annual_cost {
    type: number
    sql: ${TABLE}.total_annual_cost ;;
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
      vm_name,
      resource_pool_name,
      data_center_name,
      component_name,
      asset_name,
      vdisk_name,
      customers.id,
      customers.name
    ]
  }
}
