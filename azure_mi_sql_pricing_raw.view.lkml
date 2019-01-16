view: azure_mi_sql_pricing_raw {
  sql_table_name: public.azure_mi_sql_pricing_raw ;;

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: extra_storage_cost_per_gib {
    type: number
    sql: ${TABLE}.extra_storage_cost_per_gib ;;
  }

  dimension: generation {
    type: number
    sql: ${TABLE}.generation ;;
  }

  dimension: hourly_rate {
    type: number
    sql: ${TABLE}.hourly_rate ;;
  }

  dimension: included_storage {
    type: number
    sql: ${TABLE}.included_storage ;;
  }

  dimension: iops_cost_per_million {
    type: number
    sql: ${TABLE}.iops_cost_per_million ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}.last_updated ;;
  }

  dimension: memory_gib {
    type: number
    sql: ${TABLE}.memory_gib ;;
  }

  dimension: num_vcore {
    type: number
    sql: ${TABLE}.num_vcore ;;
  }

  dimension: pricing_plan {
    type: string
    sql: ${TABLE}.pricing_plan ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: service_tier {
    type: string
    sql: ${TABLE}.service_tier ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}.service_type ;;
  }

  measure: count {
    type: count
    drill_fields: [customers.id, customers.name]
  }
}
