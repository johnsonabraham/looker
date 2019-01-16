view: vmware_vms_2 {
  sql_table_name: public.vmware_vms_2 ;;

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

  dimension: datacenter_id {
    type: string
    sql: ${TABLE}.datacenter_id ;;
  }

  dimension: datacenter_name {
    type: string
    sql: ${TABLE}.datacenter_name ;;
  }

  dimension: host_id {
    type: string
    sql: ${TABLE}.host_id ;;
  }

  dimension: host_name {
    type: string
    sql: ${TABLE}.host_name ;;
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

  dimension: resourcepool_id {
    type: string
    sql: ${TABLE}.resourcepool_id ;;
  }

  dimension: resourcepool_name {
    type: string
    sql: ${TABLE}.resourcepool_name ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vcenter_name {
    type: string
    sql: ${TABLE}.vcenter_name ;;
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
      host_name,
      vcenter_name,
      vm_name,
      datacenter_name,
      resourcepool_name,
      customers.id,
      customers.name
    ]
  }
}
