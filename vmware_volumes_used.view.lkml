view: vmware_volumes_used {
  sql_table_name: public.vmware_volumes_used ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: asset_id {
    type: number
    sql: ${TABLE}.asset_id ;;
  }

  dimension: component_id {
    type: number
    sql: ${TABLE}.component_id ;;
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

  dimension: volume_display_name {
    type: string
    sql: ${TABLE}.volume_display_name ;;
  }

  dimension: volume_key {
    type: string
    sql: ${TABLE}.volume_key ;;
  }

  measure: count {
    type: count
    drill_fields: [id, volume_display_name, customers.id, customers.name]
  }
}
