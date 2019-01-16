view: vmware_vcenter_system_info_2 {
  sql_table_name: public.vmware_vcenter_system_info_2 ;;

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vcenter_ip {
    type: string
    sql: ${TABLE}.vcenter_ip ;;
  }

  measure: count {
    type: count
    drill_fields: [user_name, customers.id, customers.name]
  }
}
