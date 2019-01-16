view: vmware_vm_network_cost_month {
  sql_table_name: public.vmware_vm_network_cost_month ;;

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: network_cost_per_month_apac_sin {
    type: number
    sql: ${TABLE}.network_cost_per_month_apac_sin ;;
  }

  dimension: network_cost_per_month_apac_syd {
    type: number
    sql: ${TABLE}.network_cost_per_month_apac_syd ;;
  }

  dimension: network_cost_per_month_apac_tokyo {
    type: number
    sql: ${TABLE}.network_cost_per_month_apac_tokyo ;;
  }

  dimension: network_cost_per_month_eu_ireland {
    type: number
    sql: ${TABLE}.network_cost_per_month_eu_ireland ;;
  }

  dimension: network_cost_per_month_sa_east_1 {
    type: number
    sql: ${TABLE}.network_cost_per_month_sa_east_1 ;;
  }

  dimension: network_cost_per_month_us_east {
    type: number
    sql: ${TABLE}.network_cost_per_month_us_east ;;
  }

  dimension: network_cost_per_month_us_west {
    type: number
    sql: ${TABLE}.network_cost_per_month_us_west ;;
  }

  dimension: network_cost_per_month_us_west_2 {
    type: number
    sql: ${TABLE}.network_cost_per_month_us_west_2 ;;
  }

  dimension: total_network_usage_sum_per_month_kbytes {
    type: number
    sql: ${TABLE}.total_network_usage_sum_per_month_kbytes ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
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
