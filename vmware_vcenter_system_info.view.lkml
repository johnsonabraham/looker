view: vmware_vcenter_system_info {
  sql_table_name: public.vmware_vcenter_system_info ;;

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

  dimension: disconnection_error_message {
    type: string
    sql: ${TABLE}.disconnection_error_message ;;
  }

  dimension: ency_pass {
    type: string
    sql: ${TABLE}.ency_pass ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: msi_installation_status {
    type: string
    sql: ${TABLE}.msi_installation_status ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  dimension: vcenter_build {
    type: string
    sql: ${TABLE}.vcenter_build ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vcenter_ip {
    type: string
    sql: ${TABLE}.vcenter_ip ;;
  }

  dimension: vcenter_name {
    type: string
    sql: ${TABLE}.vcenter_name ;;
  }

  dimension: vcenter_port {
    type: string
    sql: ${TABLE}.vcenter_port ;;
  }

  dimension: vcenter_state {
    type: string
    sql: ${TABLE}.vcenter_state ;;
  }

  dimension: vmware_collector_ip {
    type: string
    sql: ${TABLE}.vmware_collector_ip ;;
  }

  dimension_group: vmware_collector_started {
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
    sql: ${TABLE}.vmware_collector_started_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_name, vcenter_name, customers.id, customers.name]
  }
}
