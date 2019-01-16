view: ebs_pricing_raw {
  sql_table_name: public.ebs_pricing_raw ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: deployment_option {
    type: string
    sql: ${TABLE}.deployment_option ;;
  }

  dimension: group_description {
    type: string
    sql: ${TABLE}.group_description ;;
  }

  dimension: groups {
    type: string
    sql: ${TABLE}.groups ;;
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

  dimension: max_iops_volume {
    type: string
    sql: ${TABLE}.max_iops_volume ;;
  }

  dimension: max_throughput_volume {
    type: string
    sql: ${TABLE}.max_throughput_volume ;;
  }

  dimension: max_volume_size {
    type: string
    sql: ${TABLE}.max_volume_size ;;
  }

  dimension: min_volume_size {
    type: string
    sql: ${TABLE}.min_volume_size ;;
  }

  dimension: operation {
    type: string
    sql: ${TABLE}.operation ;;
  }

  dimension: price_description {
    type: string
    sql: ${TABLE}.price_description ;;
  }

  dimension: provisioned {
    type: string
    sql: ${TABLE}.provisioned ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: service {
    type: string
    sql: ${TABLE}.service ;;
  }

  dimension: storage_media {
    type: string
    sql: ${TABLE}.storage_media ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
  }

  dimension: usagetype {
    type: string
    sql: ${TABLE}.usagetype ;;
  }

  dimension: volumetype {
    type: string
    sql: ${TABLE}.volumetype ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
