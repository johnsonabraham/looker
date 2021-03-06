view: azure_network_pricing_v2 {
  sql_table_name: public.azure_network_pricing_v2 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: capacity_limit {
    type: number
    sql: ${TABLE}.capacity_limit ;;
  }

  dimension: cost_per_gb {
    type: number
    sql: ${TABLE}.cost_per_gb ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
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

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: region_v2 {
    type: string
    sql: ${TABLE}.region_v2 ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
