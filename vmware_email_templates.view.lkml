view: vmware_email_templates {
  sql_table_name: public.vmware_email_templates ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: email_template {
    type: string
    sql: ${TABLE}.email_template ;;
  }

  dimension: email_type {
    type: string
    sql: ${TABLE}.email_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
