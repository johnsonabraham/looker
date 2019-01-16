view: uploaded_vcenter_host_info {
  sql_table_name: public.uploaded_vcenter_host_info ;;

  dimension: active_tasks {
    type: string
    sql: ${TABLE}.active_tasks ;;
  }

  dimension: cpu_utilization {
    type: number
    sql: ${TABLE}.cpu_utilization ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: datastores {
    type: string
    sql: ${TABLE}.datastores ;;
  }

  dimension: general {
    type: string
    sql: ${TABLE}.general ;;
  }

  dimension: host_name {
    type: string
    sql: ${TABLE}.host_name ;;
  }

  dimension: hyperthreading {
    type: string
    sql: ${TABLE}.hyperthreading ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: memory_utilization {
    type: number
    sql: ${TABLE}.memory_utilization ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: networks {
    type: string
    sql: ${TABLE}.networks ;;
  }

  dimension: number_of_nics {
    type: number
    sql: ${TABLE}.number_of_nics ;;
  }

  dimension: processor_type {
    type: string
    sql: ${TABLE}.processor_type ;;
  }

  dimension: processors {
    type: string
    sql: ${TABLE}.processors ;;
  }

  dimension: resources {
    type: string
    sql: ${TABLE}.resources ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: total_memory {
    type: string
    sql: ${TABLE}.total_memory ;;
  }

  dimension: virtual_machines {
    type: number
    sql: ${TABLE}.virtual_machines ;;
  }

  dimension: vmotion_enabled {
    type: string
    sql: ${TABLE}.vmotion_enabled ;;
  }

  measure: count {
    type: count
    drill_fields: [host_name, customers.id, customers.name]
  }
}
