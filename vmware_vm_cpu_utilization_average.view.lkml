view: vmware_vm_cpu_utilization_average {
  sql_table_name: public.vmware_vm_cpu_utilization_average ;;

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

  dimension_group: sample_enddate {
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
    sql: ${TABLE}.sample_enddate ;;
  }

  dimension: sample_interval {
    type: string
    sql: ${TABLE}.sample_interval ;;
  }

  dimension_group: sample_startdate {
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
    sql: ${TABLE}.sample_startdate ;;
  }

  dimension: samples_times {
    type: string
    sql: ${TABLE}.samples_times ;;
  }

  dimension: samples_values {
    type: string
    sql: ${TABLE}.samples_values ;;
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
    drill_fields: [id, customers.id, customers.name]
  }
}
