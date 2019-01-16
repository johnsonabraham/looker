view: hourly_peak_for_iops_bitrate_write_mbps {
  sql_table_name: public.hourly_peak_for_iops_bitrate_write_mbps ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assetid {
    type: number
    value_format_name: id
    sql: ${TABLE}.assetid ;;
  }

  dimension: customerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.customerid ;;
  }

  dimension: disk_name {
    type: string
    sql: ${TABLE}.disk_name ;;
  }

  dimension: instanceid {
    type: string
    sql: ${TABLE}.instanceid ;;
  }

  dimension: observed {
    type: number
    sql: ${TABLE}.observed ;;
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

  measure: count {
    type: count
    drill_fields: [id, disk_name, customers.id, customers.name]
  }
}
