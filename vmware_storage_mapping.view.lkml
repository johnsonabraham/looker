view: vmware_storage_mapping {
  sql_table_name: public.vmware_storage_mapping ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: annual_cost {
    type: number
    sql: ${TABLE}.annual_cost ;;
  }

  dimension: capacity_gb {
    type: number
    sql: ${TABLE}.capacity_gb ;;
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

  dimension: estimate_quality {
    type: string
    sql: ${TABLE}.estimate_quality ;;
  }

  dimension: estimated_annual_cost {
    type: number
    sql: ${TABLE}.estimated_annual_cost ;;
  }

  dimension: estimated_required_capacity_gb {
    type: number
    sql: ${TABLE}.estimated_required_capacity_gb ;;
  }

  dimension: plan_id {
    type: number
    sql: ${TABLE}.plan_id ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: resourcepool_id {
    type: string
    sql: ${TABLE}.resourcepool_id ;;
  }

  dimension: resourcepool_name {
    type: string
    sql: ${TABLE}.resourcepool_name ;;
  }

  dimension: suitable_for_instance_store {
    type: string
    sql: ${TABLE}.suitable_for_instance_store ;;
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

  dimension: virtual_disk_name_simple {
    type: string
    sql: ${TABLE}.virtual_disk_name_simple ;;
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
      datacenter_name,
      resourcepool_name,
      vm_name,
      customers.id,
      customers.name
    ]
  }
}
