view: hyperv_host_spec_cpu2006 {
  sql_table_name: public.hyperv_host_spec_cpu2006 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cpu_mhz {
    type: number
    sql: ${TABLE}.cpu_mhz ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: manufacture {
    type: string
    sql: ${TABLE}.manufacture ;;
  }

  dimension: match_level {
    type: number
    sql: ${TABLE}.match_level ;;
  }

  dimension: memory_allocated {
    type: number
    sql: ${TABLE}.memory_allocated ;;
  }

  dimension: memory_bus_speed {
    type: number
    sql: ${TABLE}.memory_bus_speed ;;
  }

  dimension: number_threads_allocated {
    type: number
    sql: ${TABLE}.number_threads_allocated ;;
  }

  dimension: os_details {
    type: string
    sql: ${TABLE}.os_details ;;
  }

  dimension: os_is_end_of_life {
    type: number
    sql: ${TABLE}.os_is_end_of_life ;;
  }

  dimension: processor_family {
    type: string
    sql: ${TABLE}.processor_family ;;
  }

  dimension: processor_name {
    type: string
    sql: ${TABLE}.processor_name ;;
  }

  dimension: spec_cpu2006_fp_rate {
    type: number
    sql: ${TABLE}.spec_cpu2006_fp_rate ;;
  }

  dimension: system_model {
    type: string
    sql: ${TABLE}.system_model ;;
  }

  dimension: system_name {
    type: string
    sql: ${TABLE}.system_name ;;
  }

  dimension: system_vendor {
    type: string
    sql: ${TABLE}.system_vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [id, processor_name, system_name, customers.id, customers.name]
  }
}
