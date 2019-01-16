view: datasource_metadata_cached {
  sql_table_name: public.datasource_metadata_cached ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: customer_type {
    type: number
    sql: ${TABLE}.customer_type ;;
  }

  dimension: db_max_workload {
    type: number
    sql: ${TABLE}.db_max_workload ;;
  }

  dimension: db_memory_gb {
    type: number
    sql: ${TABLE}.db_memory_gb ;;
  }

  dimension: db_name {
    type: string
    sql: ${TABLE}.db_name ;;
  }

  dimension: db_type {
    type: string
    sql: ${TABLE}.db_type ;;
  }

  dimension: dbcluster_ip1 {
    type: string
    sql: ${TABLE}.dbcluster_ip1 ;;
  }

  dimension: dbcluster_ip2 {
    type: string
    sql: ${TABLE}.dbcluster_ip2 ;;
  }

  dimension: dbcluster_ip3 {
    type: string
    sql: ${TABLE}.dbcluster_ip3 ;;
  }

  dimension: dbcluster_ip4 {
    type: string
    sql: ${TABLE}.dbcluster_ip4 ;;
  }

  dimension: dbcluster_ip5 {
    type: string
    sql: ${TABLE}.dbcluster_ip5 ;;
  }

  dimension: dbcluster_ip6 {
    type: string
    sql: ${TABLE}.dbcluster_ip6 ;;
  }

  dimension: dbcluster_ip7 {
    type: string
    sql: ${TABLE}.dbcluster_ip7 ;;
  }

  dimension: dbcluster_private_ip1 {
    type: string
    sql: ${TABLE}.dbcluster_private_ip1 ;;
  }

  dimension: dbcluster_private_ip2 {
    type: string
    sql: ${TABLE}.dbcluster_private_ip2 ;;
  }

  dimension: dbcluster_private_ip3 {
    type: string
    sql: ${TABLE}.dbcluster_private_ip3 ;;
  }

  dimension: dbcluster_private_ip4 {
    type: string
    sql: ${TABLE}.dbcluster_private_ip4 ;;
  }

  dimension: dbcluster_private_ip5 {
    type: string
    sql: ${TABLE}.dbcluster_private_ip5 ;;
  }

  dimension: dbcluster_private_ip6 {
    type: string
    sql: ${TABLE}.dbcluster_private_ip6 ;;
  }

  dimension: dbcluster_private_ip7 {
    type: string
    sql: ${TABLE}.dbcluster_private_ip7 ;;
  }

  dimension: fqdn {
    type: string
    sql: ${TABLE}.FQDN ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_current {
    type: yesno
    sql: ${TABLE}.is_current ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: last_allocated {
    type: yesno
    sql: ${TABLE}.last_allocated ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: port {
    type: number
    sql: ${TABLE}.port ;;
  }

  dimension: private_ip {
    type: string
    sql: ${TABLE}.private_ip ;;
  }

  dimension_group: scheduled_update {
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
    sql: ${TABLE}.scheduled_update ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [id, db_name, username]
  }
}
