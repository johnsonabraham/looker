view: daily_peak_for_memory_usage_60 {
  sql_table_name: public.daily_peak_for_memory_usage_60 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: assetid {
    type: number
    value_format_name: id
    sql: ${TABLE}.assetid ;;
  }

  dimension: c1_medium_memory {
    type: number
    sql: ${TABLE}.c1_medium_memory ;;
  }

  dimension: c1_xlarge_memory {
    type: number
    sql: ${TABLE}.c1_xlarge_memory ;;
  }

  dimension: c3_2xlarge_memory {
    type: number
    sql: ${TABLE}.c3_2xlarge_memory ;;
  }

  dimension: c3_4xlarge_memory {
    type: number
    sql: ${TABLE}.c3_4xlarge_memory ;;
  }

  dimension: c3_8xlarge_memory {
    type: number
    sql: ${TABLE}.c3_8xlarge_memory ;;
  }

  dimension: c3_large_memory {
    type: number
    sql: ${TABLE}.c3_large_memory ;;
  }

  dimension: c3_xlarge_memory {
    type: number
    sql: ${TABLE}.c3_xlarge_memory ;;
  }

  dimension: c4_2xlarge_memory {
    type: number
    sql: ${TABLE}.c4_2xlarge_memory ;;
  }

  dimension: c4_4xlarge_memory {
    type: number
    sql: ${TABLE}.c4_4xlarge_memory ;;
  }

  dimension: c4_8xlarge_memory {
    type: number
    sql: ${TABLE}.c4_8xlarge_memory ;;
  }

  dimension: c4_large_memory {
    type: number
    sql: ${TABLE}.c4_large_memory ;;
  }

  dimension: c4_xlarge_memory {
    type: number
    sql: ${TABLE}.c4_xlarge_memory ;;
  }

  dimension: cc2_8xlarge_memory {
    type: number
    sql: ${TABLE}.cc2_8xlarge_memory ;;
  }

  dimension: componentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.componentid ;;
  }

  dimension: cr1_8xlarge_memory {
    type: number
    sql: ${TABLE}.cr1_8xlarge_memory ;;
  }

  dimension: customerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.customerid ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: hi1_4xlarge_memory {
    type: number
    sql: ${TABLE}.hi1_4xlarge_memory ;;
  }

  dimension: hs1_8xlarge_memory {
    type: number
    sql: ${TABLE}.hs1_8xlarge_memory ;;
  }

  dimension: i2_2xlarge_memory {
    type: number
    sql: ${TABLE}.i2_2xlarge_memory ;;
  }

  dimension: i2_4xlarge_memory {
    type: number
    sql: ${TABLE}.i2_4xlarge_memory ;;
  }

  dimension: i2_8xlarge_memory {
    type: number
    sql: ${TABLE}.i2_8xlarge_memory ;;
  }

  dimension: i2_xlarge_memory {
    type: number
    sql: ${TABLE}.i2_xlarge_memory ;;
  }

  dimension: instanceid {
    type: string
    sql: ${TABLE}.instanceid ;;
  }

  dimension: large_memory {
    type: number
    sql: ${TABLE}.large_memory ;;
  }

  dimension: m2_2xlarge_memory {
    type: number
    sql: ${TABLE}.m2_2xlarge_memory ;;
  }

  dimension: m2_4xlarge_memory {
    type: number
    sql: ${TABLE}.m2_4xlarge_memory ;;
  }

  dimension: m2_xlarge_memory {
    type: number
    sql: ${TABLE}.m2_xlarge_memory ;;
  }

  dimension: m3_2xlarge_memory {
    type: number
    sql: ${TABLE}.m3_2xlarge_memory ;;
  }

  dimension: m3_large_memory {
    type: number
    sql: ${TABLE}.m3_large_memory ;;
  }

  dimension: m3_medium_memory {
    type: number
    sql: ${TABLE}.m3_medium_memory ;;
  }

  dimension: m3_xlarge_memory {
    type: number
    sql: ${TABLE}.m3_xlarge_memory ;;
  }

  dimension: medium_memory {
    type: number
    sql: ${TABLE}.medium_memory ;;
  }

  dimension: micro_memory {
    type: number
    sql: ${TABLE}.micro_memory ;;
  }

  dimension: observed {
    type: number
    sql: ${TABLE}.observed ;;
  }

  dimension: r3_2xlarge_memory {
    type: number
    sql: ${TABLE}.r3_2xlarge_memory ;;
  }

  dimension: r3_4xlarge_memory {
    type: number
    sql: ${TABLE}.r3_4xlarge_memory ;;
  }

  dimension: r3_8xlarge_memory {
    type: number
    sql: ${TABLE}.r3_8xlarge_memory ;;
  }

  dimension: r3_large_memory {
    type: number
    sql: ${TABLE}.r3_large_memory ;;
  }

  dimension: r3_xlarge_memory {
    type: number
    sql: ${TABLE}.r3_xlarge_memory ;;
  }

  dimension: small_memory {
    type: number
    sql: ${TABLE}.small_memory ;;
  }

  dimension: xlarge_memory {
    type: number
    sql: ${TABLE}.xlarge_memory ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
