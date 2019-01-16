view: vmware_system_verification {
  sql_table_name: public.vmware_system_verification ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: being_processed_cnt {
    type: number
    sql: ${TABLE}.being_processed_cnt ;;
  }

  dimension: cpu_is_supported {
    type: yesno
    sql: ${TABLE}.cpu_is_supported ;;
  }

  dimension: cpu_type {
    type: string
    sql: ${TABLE}.cpu_type ;;
  }

  dimension: customer_exists {
    type: yesno
    sql: ${TABLE}.customer_exists ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: full_assessment_started {
    type: yesno
    sql: ${TABLE}.full_assessment_started ;;
  }

  dimension: hardware_mapping_state {
    type: yesno
    sql: ${TABLE}.hardware_mapping_state ;;
  }

  dimension: host_id {
    type: string
    sql: ${TABLE}.host_id ;;
  }

  dimension: host_name {
    type: string
    sql: ${TABLE}.host_name ;;
  }

  dimension: is_virtual_appliance {
    type: yesno
    sql: ${TABLE}.is_virtual_appliance ;;
  }

  dimension: is_visible {
    type: yesno
    sql: ${TABLE}.is_visible ;;
  }

  dimension: is_vmware_management_agent_crashed {
    type: yesno
    sql: ${TABLE}.is_vmware_management_agent_crashed ;;
  }

  dimension: is_vmware_management_agent_crashed_some_data_is_missing {
    type: yesno
    sql: ${TABLE}.is_vmware_management_agent_crashed_some_data_is_missing ;;
  }

  dimension_group: last_time_updated {
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
    sql: ${TABLE}.last_time_updated ;;
  }

  dimension: mac_address {
    type: string
    sql: ${TABLE}.mac_address ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: number_of_attempts {
    type: number
    sql: ${TABLE}.number_of_attempts ;;
  }

  dimension_group: onboarding {
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
    sql: ${TABLE}.onboarding_time ;;
  }

  dimension_group: processing_start {
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
    sql: ${TABLE}.processing_start_time ;;
  }

  dimension: system_and_cpu_is_verified {
    type: yesno
    sql: ${TABLE}.system_and_cpu_is_verified ;;
  }

  dimension: system_is_supported {
    type: yesno
    sql: ${TABLE}.system_is_supported ;;
  }

  dimension: system_model {
    type: string
    sql: ${TABLE}.system_model ;;
  }

  dimension: system_type {
    type: string
    sql: ${TABLE}.system_type ;;
  }

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  dimension: vcenter_name {
    type: string
    sql: ${TABLE}.vcenter_name ;;
  }

  dimension: vm_id {
    type: string
    sql: ${TABLE}.vm_id ;;
  }

  dimension: vm_name {
    type: string
    sql: ${TABLE}.vm_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      vcenter_name,
      vm_name,
      host_name,
      customers.id,
      customers.name
    ]
  }
}
