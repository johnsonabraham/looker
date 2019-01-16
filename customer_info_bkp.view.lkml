view: customer_info_bkp {
  sql_table_name: public.customer_info_bkp ;;

  dimension: customer_address {
    type: string
    sql: ${TABLE}.customer_address ;;
  }

  dimension: customer_company {
    type: string
    sql: ${TABLE}.customer_company ;;
  }

  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: customer_password {
    type: string
    sql: ${TABLE}.customer_password ;;
  }

  dimension: customer_phone {
    type: string
    sql: ${TABLE}.customer_phone ;;
  }

  dimension: customer_status {
    type: string
    sql: ${TABLE}.customer_status ;;
  }

  dimension: customer_user_name {
    type: string
    sql: ${TABLE}.customer_user_name ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_user_name, customer_name, customers.id, customers.name]
  }
}
