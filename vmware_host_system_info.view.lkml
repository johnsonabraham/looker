view: vmware_host_system_info {
  sql_table_name: public.vmware_host_system_info ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: bus_hz {
    type: number
    sql: ${TABLE}.bus_hz ;;
  }

  dimension: cpu_hz {
    type: number
    sql: ${TABLE}.cpu_hz ;;
  }

  dimension: cpu_model {
    type: string
    sql: ${TABLE}.cpu_model ;;
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

  dimension: host_id {
    type: string
    sql: ${TABLE}.host_id ;;
  }

  dimension: host_name {
    type: string
    sql: ${TABLE}.host_name ;;
  }

  dimension: num_cores {
    type: number
    sql: ${TABLE}.num_cores ;;
  }

  dimension: num_cpus {
    type: number
    sql: ${TABLE}.num_cpus ;;
  }

  dimension: num_threads {
    type: number
    sql: ${TABLE}.num_threads ;;
  }

  dimension: system_model {
    type: string
    sql: ${TABLE}.system_model ;;
  }

  dimension: system_vendor {
    type: string
    sql: ${TABLE}.system_vendor ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: total_memory {
    type: number
    sql: ${TABLE}.total_memory ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, host_name, customers.id, customers.name]
  }
}
