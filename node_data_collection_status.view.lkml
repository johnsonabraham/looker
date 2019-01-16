view: node_data_collection_status {
  sql_table_name: public.node_data_collection_status ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: agent_data_collected_error {
    type: yesno
    sql: ${TABLE}.agent_data_collected_error ;;
  }

  dimension: agent_install_error_log {
    type: string
    sql: ${TABLE}.agent_install_error_log ;;
  }

  dimension: agent_install_status {
    type: string
    sql: ${TABLE}.agent_install_status ;;
  }

  dimension: agent_last_raw_data_time {
    type: string
    sql: ${TABLE}.agent_last_raw_data_time ;;
  }

  dimension: agent_last_raw_data_time_v2 {
    type: string
    sql: ${TABLE}.agent_last_raw_data_time_v2 ;;
  }

  dimension: agent_machine_name {
    type: string
    sql: ${TABLE}.agent_machine_name ;;
  }

  dimension_group: agent_most_recent_running {
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
    sql: ${TABLE}.agent_most_recent_running_time ;;
  }

  dimension: agent_os_type {
    type: string
    sql: ${TABLE}.agent_os_type ;;
  }

  dimension: agent_state {
    type: string
    sql: ${TABLE}.agent_state ;;
  }

  dimension_group: agent_stop {
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
    sql: ${TABLE}.agent_stop_time ;;
  }

  dimension: agent_version {
    type: string
    sql: ${TABLE}.agent_version ;;
  }

  dimension: assessment_issues {
    type: string
    sql: ${TABLE}.assessment_issues ;;
  }

  dimension: cpu_is_unsupported {
    type: yesno
    sql: ${TABLE}.cpu_is_unsupported ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: data_collection_status_last_updated {
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
    sql: ${TABLE}.data_collection_status_last_updated ;;
  }

  dimension: detailed_agent_raw_data_status {
    type: string
    sql: ${TABLE}.detailed_agent_raw_data_status ;;
  }

  dimension: error_info {
    type: string
    sql: ${TABLE}.error_info ;;
  }

  dimension: has_a_server_cpu {
    type: yesno
    sql: ${TABLE}.has_a_server_cpu ;;
  }

  dimension_group: initial_agent_install {
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
    sql: ${TABLE}.initial_agent_install_time ;;
  }

  dimension: instance_id_of_agent {
    type: string
    sql: ${TABLE}.instance_id_of_agent ;;
  }

  dimension: instance_id_of_vm {
    type: string
    sql: ${TABLE}.instance_id_of_vm ;;
  }

  dimension: internal_error_info {
    type: string
    sql: ${TABLE}.internal_error_info ;;
  }

  dimension: is_virtual_appliance {
    type: yesno
    sql: ${TABLE}.is_virtual_appliance ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}.last_updated ;;
  }

  dimension: past_agent_machine_names {
    type: string
    sql: ${TABLE}.past_agent_machine_names ;;
  }

  dimension: past_vm_machine_names {
    type: string
    sql: ${TABLE}.past_vm_machine_names ;;
  }

  dimension: preassessment_complete {
    type: yesno
    sql: ${TABLE}.preassessment_complete ;;
  }

  dimension: private_assessment_with_limited_data {
    type: yesno
    sql: ${TABLE}.private_assessment_with_limited_data ;;
  }

  dimension: processing_status {
    type: string
    sql: ${TABLE}.processing_status ;;
  }

  dimension: user_request_assessment_with_limited_data {
    type: yesno
    sql: ${TABLE}.user_request_assessment_with_limited_data ;;
  }

  dimension_group: vm_detection {
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
    sql: ${TABLE}.vm_detection_time ;;
  }

  dimension_group: vm_first_running {
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
    sql: ${TABLE}.vm_first_running_time ;;
  }

  dimension: vm_machine_name {
    type: string
    sql: ${TABLE}.vm_machine_name ;;
  }

  dimension_group: vm_most_recent_running {
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
    sql: ${TABLE}.vm_most_recent_running_time ;;
  }

  dimension_group: vm_most_recent_stop {
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
    sql: ${TABLE}.vm_most_recent_stop_time ;;
  }

  dimension: vm_never_observed_running {
    type: yesno
    sql: ${TABLE}.vm_never_observed_running ;;
  }

  dimension_group: vm_terminated {
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
    sql: ${TABLE}.vm_terminated_time ;;
  }

  dimension: vm_type {
    type: string
    sql: ${TABLE}.vm_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, vm_machine_name, agent_machine_name, customers.id, customers.name]
  }
}
