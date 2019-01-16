view: logical_volume_to_volume_group {
  sql_table_name: public.logical_volume_to_volume_group ;;

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

  dimension: instance_id {
    type: string
    sql: ${TABLE}.instance_id ;;
  }

  dimension: logical_group_name {
    type: string
    sql: ${TABLE}.logical_group_name ;;
  }

  dimension: mount_pt {
    type: string
    sql: ${TABLE}.mount_pt ;;
  }

  dimension: volume_group_name {
    type: string
    sql: ${TABLE}.volume_group_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, volume_group_name, logical_group_name, customers.id, customers.name]
  }
}
