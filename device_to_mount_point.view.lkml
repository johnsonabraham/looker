view: device_to_mount_point {
  sql_table_name: public.device_to_mount_point ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: aws_ssd_provisioning_info {
    type: string
    sql: ${TABLE}.aws_ssd_provisioning_info ;;
  }

  dimension: base_gp_ssd_parameters {
    type: string
    sql: ${TABLE}.base_gp_ssd_parameters ;;
  }

  dimension: capacity {
    type: number
    sql: ${TABLE}.capacity ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: device_name {
    type: string
    sql: ${TABLE}.device_name ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: mount_pt {
    type: string
    sql: ${TABLE}.mount_pt ;;
  }

  dimension: other_devices {
    type: string
    sql: ${TABLE}.other_devices ;;
  }

  dimension: raid_type {
    type: number
    sql: ${TABLE}.raid_type ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  measure: count {
    type: count
    drill_fields: [id, device_name, display_name, customers.id, customers.name]
  }
}
