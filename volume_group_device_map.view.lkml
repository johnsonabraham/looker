view: volume_group_device_map {
  sql_table_name: public.volume_group_device_map ;;

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

  dimension: volume_group_name {
    type: string
    sql: ${TABLE}.volume_group_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, device_name, volume_group_name, customers.id, customers.name]
  }
}
