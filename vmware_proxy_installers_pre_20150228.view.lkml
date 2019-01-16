view: vmware_proxy_installers_pre_20150228 {
  sql_table_name: public.vmware_proxy_installers_pre_20150228 ;;

  dimension: installer_linux_file {
    type: string
    sql: ${TABLE}.installer_linux_file ;;
  }

  dimension: installer_windows_file {
    type: string
    sql: ${TABLE}.installer_windows_file ;;
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

  dimension: proxy_port {
    type: number
    sql: ${TABLE}.proxy_port ;;
  }

  dimension: proxy_username {
    type: string
    sql: ${TABLE}.proxy_username ;;
  }

  measure: count {
    type: count
    drill_fields: [proxy_username]
  }
}
