view: customers_bkp {
  sql_table_name: public.customers_bkp ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: agenttype {
    type: string
    sql: ${TABLE}.agenttype ;;
  }

  dimension: allow_perf_agents_on_vms {
    type: yesno
    sql: ${TABLE}.allow_perf_agents_on_vms ;;
  }

  dimension: changepassword {
    type: number
    sql: ${TABLE}.changepassword ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: encpassword {
    type: string
    sql: ${TABLE}.encpassword ;;
  }

  dimension: has_multiple_account {
    type: yesno
    sql: ${TABLE}.has_multiple_account ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_azure_estimator_customer {
    type: yesno
    sql: ${TABLE}.is_azure_estimator_customer ;;
  }

  dimension: is_ec2_estimator_customer {
    type: yesno
    sql: ${TABLE}.is_ec2_estimator_customer ;;
  }

  dimension: is_ec2_user {
    type: yesno
    sql: ${TABLE}.is_ec2_user ;;
  }

  dimension: is_google_compute_estimator_customer {
    type: yesno
    sql: ${TABLE}.is_google_compute_estimator_customer ;;
  }

  dimension: is_hyperv_user {
    type: yesno
    sql: ${TABLE}.is_hyperv_user ;;
  }

  dimension: is_on_prem_user {
    type: yesno
    sql: ${TABLE}.is_on_prem_user ;;
  }

  dimension: is_trial {
    type: yesno
    sql: ${TABLE}.is_trial ;;
  }

  dimension: is_vmware_user {
    type: yesno
    sql: ${TABLE}.is_vmware_user ;;
  }

  dimension: isactive {
    type: string
    sql: ${TABLE}.isactive ;;
  }

  dimension: isconfigured {
    type: string
    sql: ${TABLE}.isconfigured ;;
  }

  dimension: isproductionready {
    type: string
    sql: ${TABLE}.isproductionready ;;
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

  dimension: mapped_customer_id {
    type: number
    sql: ${TABLE}.mapped_customer_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: new_machines_are_visible {
    type: yesno
    sql: ${TABLE}.new_machines_are_visible ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: planning_help_flag {
    type: yesno
    sql: ${TABLE}.planning_help_flag ;;
  }

  dimension: security_or_tag_group {
    type: string
    sql: ${TABLE}.security_or_tag_group ;;
  }

  dimension: send_report {
    type: string
    sql: ${TABLE}.send_report ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: stop_processing {
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
    sql: ${TABLE}.stop_processing_time ;;
  }

  dimension: temp_password {
    type: yesno
    sql: ${TABLE}.temp_password ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
