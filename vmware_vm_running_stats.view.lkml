view: vmware_vm_running_stats {
  sql_table_name: public.vmware_vm_running_stats ;;

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

  dimension: fraction_on {
    type: number
    sql: ${TABLE}.fraction_on ;;
  }

  dimension: fraction_on_and_idle {
    type: number
    value_format_name: id
    sql: ${TABLE}.fraction_on_and_idle ;;
  }

  dimension: fraction_on_with_daily_scheduled_autoscaling {
    type: number
    sql: ${TABLE}.fraction_on_with_daily_scheduled_autoscaling ;;
  }

  dimension: fraction_on_with_nights_and_weekends_off {
    type: number
    sql: ${TABLE}.fraction_on_with_nights_and_weekends_off ;;
  }

  dimension: fraction_on_with_nights_off {
    type: number
    sql: ${TABLE}.fraction_on_with_nights_off ;;
  }

  dimension: fraction_on_with_weekends_off {
    type: number
    sql: ${TABLE}.fraction_on_with_weekends_off ;;
  }

  dimension: fraction_on_with_weekly_scheduled_autoscaling {
    type: number
    sql: ${TABLE}.fraction_on_with_weekly_scheduled_autoscaling ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension_group: night_time_turn_off_time_utc {
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
    sql: ${TABLE}.night_time_turn_off_time_utc ;;
  }

  dimension_group: night_time_turn_on_time_utc {
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
    sql: ${TABLE}.night_time_turn_on_time_utc ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vm_id {
    type: string
    sql: ${TABLE}.vm_id ;;
  }

  dimension_group: weekend_turn_off_time_utc {
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
    sql: ${TABLE}.weekend_turn_off_time_utc ;;
  }

  dimension_group: weekend_turn_on_time_utc {
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
    sql: ${TABLE}.weekend_turn_on_time_utc ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name]
  }
}
