view: asset_details {
  sql_table_name: public.asset_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: asset_description {
    type: string
    sql: ${TABLE}.asset_description ;;
  }

  dimension: asset_id {
    type: number
    sql: ${TABLE}.asset_id ;;
  }

  dimension: asset_name {
    type: string
    sql: ${TABLE}.asset_name ;;
  }

  dimension: asset_type {
    type: string
    sql: ${TABLE}.asset_type ;;
  }

  dimension: customer_asset_type_id {
    type: number
    sql: ${TABLE}.customer_asset_type_id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }

  dimension: infrastructure_id {
    type: string
    sql: ${TABLE}.infrastructure_id ;;
  }

  dimension: is_default {
    type: yesno
    sql: ${TABLE}.is_default ;;
  }

  dimension: monitoring {
    type: string
    sql: ${TABLE}.monitoring ;;
  }

  measure: count {
    type: count
    drill_fields: [id, asset_name, group_name, customers.id, customers.name]
  }
}
