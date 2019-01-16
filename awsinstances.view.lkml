view: awsinstances {
  sql_table_name: public.awsinstances ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accesskey {
    type: string
    sql: ${TABLE}.accesskey ;;
  }

  dimension: allow_large_gaps_in_data {
    type: yesno
    sql: ${TABLE}.allow_large_gaps_in_data ;;
  }

  dimension: allow_uuid_duplicates {
    type: yesno
    sql: ${TABLE}.allow_uuid_duplicates ;;
  }

  dimension: assessment_parameters {
    type: string
    sql: ${TABLE}.assessment_parameters ;;
  }

  dimension: asset_group_history {
    type: string
    sql: ${TABLE}.asset_group_history ;;
  }

  dimension: asset_id {
    type: number
    sql: ${TABLE}.asset_id ;;
  }

  dimension: availabililtyzone {
    type: string
    sql: ${TABLE}.availabililtyzone ;;
  }

  dimension: cc_perf_agent {
    type: string
    sql: ${TABLE}.cc_perf_agent ;;
  }

  dimension: cc_sec_agent {
    type: string
    sql: ${TABLE}.cc_sec_agent ;;
  }

  dimension_group: confirmed_not_hyperv {
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
    sql: ${TABLE}.confirmed_not_hyperv ;;
  }

  dimension: customerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.customerid ;;
  }

  dimension: disabled_in_plan_reason {
    type: string
    sql: ${TABLE}.disabled_in_plan_reason ;;
  }

  dimension: disabled_reason {
    type: string
    sql: ${TABLE}.disabled_reason ;;
  }

  dimension: enabled_history {
    type: string
    sql: ${TABLE}.enabled_history ;;
  }

  dimension: endpoint {
    type: string
    sql: ${TABLE}.endpoint ;;
  }

  dimension: force_always_on {
    type: yesno
    sql: ${TABLE}.force_always_on ;;
  }

  dimension: fucntion {
    type: string
    sql: ${TABLE}.fucntion ;;
  }

  dimension: given_cpu_type {
    type: string
    sql: ${TABLE}.given_cpu_type ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: hourly_upfront {
    type: string
    sql: ${TABLE}.hourly_upfront ;;
  }

  dimension: hourlyrate {
    type: string
    sql: ${TABLE}.hourlyrate ;;
  }

  dimension: instance_id_of_vm {
    type: string
    sql: ${TABLE}.instance_id_of_vm ;;
  }

  dimension: instanceid {
    type: string
    sql: ${TABLE}.instanceid ;;
  }

  dimension: instancename {
    type: string
    sql: ${TABLE}.instancename ;;
  }

  dimension: instancestatus {
    type: string
    sql: ${TABLE}.instancestatus ;;
  }

  dimension: instancetype {
    type: string
    sql: ${TABLE}.instancetype ;;
  }

  dimension: insufficient_machine_data {
    type: yesno
    sql: ${TABLE}.insufficient_machine_data ;;
  }

  dimension: ipaddress {
    type: string
    sql: ${TABLE}.ipaddress ;;
  }

  dimension: is_agent_on_vm {
    type: yesno
    sql: ${TABLE}.is_agent_on_vm ;;
  }

  dimension: is_hyperv_host {
    type: yesno
    sql: ${TABLE}.is_hyperv_host ;;
  }

  dimension: is_storage_appliance {
    type: yesno
    sql: ${TABLE}.is_storage_appliance ;;
  }

  dimension: is_visible {
    type: yesno
    sql: ${TABLE}.is_visible ;;
  }

  dimension: is_visible_in_plan {
    type: yesno
    sql: ${TABLE}.is_visible_in_plan ;;
  }

  dimension: keyname {
    type: string
    sql: ${TABLE}.keyname ;;
  }

  dimension_group: lastupdated {
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
    sql: ${TABLE}.lastupdated ;;
  }

  dimension: launchtime {
    type: string
    sql: ${TABLE}.launchtime ;;
  }

  dimension: monitorignstatus {
    type: string
    sql: ${TABLE}.monitorignstatus ;;
  }

  dimension: monitoring {
    type: string
    sql: ${TABLE}.monitoring ;;
  }

  dimension: plantype {
    type: string
    sql: ${TABLE}.plantype ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: preprocess_bitrate_collection_recommendation {
    type: yesno
    sql: ${TABLE}.preprocess_bitrate_collection_recommendation ;;
  }

  dimension: privatedns {
    type: string
    sql: ${TABLE}.privatedns ;;
  }

  dimension: privateip {
    type: string
    sql: ${TABLE}.privateip ;;
  }

  dimension_group: process_data_from {
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
    sql: ${TABLE}.process_data_from_time ;;
  }

  dimension_group: process_data_up_to {
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
    sql: ${TABLE}.process_data_up_to_time ;;
  }

  dimension: provider_id {
    type: number
    sql: ${TABLE}.provider_id ;;
  }

  dimension: publicdns {
    type: string
    sql: ${TABLE}.publicdns ;;
  }

  dimension: publicip {
    type: string
    sql: ${TABLE}.publicip ;;
  }

  dimension: state_reason {
    type: string
    sql: ${TABLE}.state_reason ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: use_disk_info_from_agent {
    type: string
    sql: ${TABLE}.use_disk_info_from_agent ;;
  }

  dimension: user_disabled_instance {
    type: yesno
    sql: ${TABLE}.user_disabled_instance ;;
  }

  dimension: utilization {
    type: string
    sql: ${TABLE}.utilization ;;
  }

  measure: count {
    type: count
    drill_fields: [id, keyname, instancename, customers.id, customers.name]
  }
}
