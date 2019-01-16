view: vmware_vm_ebs_io_cost_standard_per_vdisk {
  sql_table_name: public.vmware_vm_ebs_io_cost_standard_per_vdisk ;;

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: iops_per_month {
    type: number
    sql: ${TABLE}.iops_per_month ;;
  }

  dimension: price_iops_per_month_per_vdisk {
    type: number
    sql: ${TABLE}.price_iops_per_month_per_vdisk ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: unitprice {
    type: number
    sql: ${TABLE}.unitprice ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vdisk_id {
    type: string
    sql: ${TABLE}.vdisk_id ;;
  }

  dimension: vm_id {
    type: string
    sql: ${TABLE}.vm_id ;;
  }

  measure: count {
    type: count
    drill_fields: [customers.id, customers.name]
  }
}
