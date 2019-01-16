view: tcltk_process_details {
  sql_table_name: public.tcltk_process_details ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: always_has_parent {
    type: yesno
    sql: ${TABLE}.always_has_parent ;;
  }

  dimension: connection_observed {
    type: yesno
    sql: ${TABLE}.connection_observed ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: is_client {
    type: yesno
    sql: ${TABLE}.is_client ;;
  }

  dimension: is_server {
    type: yesno
    sql: ${TABLE}.is_server ;;
  }

  dimension: keyword1 {
    type: string
    sql: ${TABLE}.keyword1 ;;
  }

  dimension: keyword2 {
    type: string
    sql: ${TABLE}.keyword2 ;;
  }

  dimension: keyword3 {
    type: string
    sql: ${TABLE}.keyword3 ;;
  }

  dimension: os_type {
    type: string
    sql: ${TABLE}.os_type ;;
  }

  dimension: process_cmdline {
    type: string
    sql: ${TABLE}.process_cmdline ;;
  }

  dimension: process_name {
    type: string
    sql: ${TABLE}.process_name ;;
  }

  dimension: quality {
    type: number
    sql: ${TABLE}.quality ;;
  }

  measure: count {
    type: count
    drill_fields: [id, display_name, process_name]
  }
}
