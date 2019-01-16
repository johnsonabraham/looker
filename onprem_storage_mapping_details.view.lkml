view: onprem_storage_mapping_details {
  sql_table_name: public.onprem_storage_mapping_details ;;

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

  dimension: disk_capacity_gb {
    type: number
    sql: ${TABLE}.disk_capacity_gb ;;
  }

  dimension: disk_mount_point {
    type: string
    sql: ${TABLE}.disk_mount_point ;;
  }

  dimension: disk_occupancy_gb {
    type: string
    sql: ${TABLE}.disk_occupancy_gb ;;
  }

  dimension: ebs_annual_cost {
    type: number
    sql: ${TABLE}.ebs_annual_cost ;;
  }

  dimension: ebs_occupancy_gb {
    type: number
    sql: ${TABLE}.ebs_occupancy_gb ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: instance_name {
    type: string
    sql: ${TABLE}.instance_name ;;
  }

  dimension: iops_annual_cost {
    type: number
    sql: ${TABLE}.iops_annual_cost ;;
  }

  dimension: iops_per_month {
    type: number
    sql: ${TABLE}.iops_per_month ;;
  }

  dimension: peak_iops {
    type: number
    sql: ${TABLE}.peak_iops ;;
  }

  dimension: plan_id {
    type: number
    sql: ${TABLE}.plan_id ;;
  }

  dimension: provisioned_iops {
    type: number
    sql: ${TABLE}.provisioned_iops ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: total_annual_cost {
    type: number
    sql: ${TABLE}.total_annual_cost ;;
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
      instance_name,
      customers.id,
      customers.name
    ]
  }
}
