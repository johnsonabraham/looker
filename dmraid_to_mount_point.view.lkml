view: dmraid_to_mount_point {
  sql_table_name: public.dmraid_to_mount_point ;;

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

  dimension: device_name {
    type: string
    sql: ${TABLE}.device_name ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: mount_pt {
    type: string
    sql: ${TABLE}.mount_pt ;;
  }

  dimension: raid_set {
    type: string
    sql: ${TABLE}.raid_set ;;
  }

  measure: count {
    type: count
    drill_fields: [id, device_name, customers.id, customers.name]
  }
}
