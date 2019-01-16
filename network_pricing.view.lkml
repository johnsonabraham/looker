view: network_pricing {
  sql_table_name: public.network_pricing ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: bracket {
    type: string
    sql: ${TABLE}.bracket ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: region_2 {
    type: string
    sql: ${TABLE}.region_2 ;;
  }

  dimension: unittype {
    type: string
    sql: ${TABLE}.unittype ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
