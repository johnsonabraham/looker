view: tables_with_asset_and_components {
  sql_table_name: public.tables_with_asset_and_components ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  dimension: uses_asset_and_group_id {
    type: yesno
    sql: ${TABLE}.uses_asset_and_group_id ;;
  }

  dimension: uses_asset_id {
    type: yesno
    sql: ${TABLE}.uses_asset_id ;;
  }

  dimension: uses_asset_name {
    type: yesno
    sql: ${TABLE}.uses_asset_name ;;
  }

  dimension: uses_assetid {
    type: yesno
    sql: ${TABLE}.uses_assetid ;;
  }

  dimension: uses_assetname {
    type: yesno
    sql: ${TABLE}.uses_assetname ;;
  }

  dimension: uses_component_id {
    type: yesno
    sql: ${TABLE}.uses_component_id ;;
  }

  dimension: uses_componentid {
    type: yesno
    sql: ${TABLE}.uses_componentid ;;
  }

  dimension: uses_customer_id {
    type: yesno
    sql: ${TABLE}.uses_customer_id ;;
  }

  dimension: uses_customerid {
    type: yesno
    sql: ${TABLE}.uses_customerid ;;
  }

  dimension: uses_group_id {
    type: yesno
    sql: ${TABLE}.uses_group_id ;;
  }

  dimension: uses_group_name {
    type: yesno
    sql: ${TABLE}.uses_group_name ;;
  }

  dimension: uses_instance_id {
    type: yesno
    sql: ${TABLE}.uses_instance_id ;;
  }

  dimension: uses_instanceid {
    type: yesno
    sql: ${TABLE}.uses_instanceid ;;
  }

  dimension: uses_vm_id {
    type: yesno
    sql: ${TABLE}.uses_vm_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, uses_assetname, uses_asset_name, table_name, uses_group_name]
  }
}
