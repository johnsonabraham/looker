view: network_rate_plan {
  sql_table_name: public.network_rate_plan ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: in_from_different_availability_zone {
    type: number
    sql: ${TABLE}.in_from_different_availability_zone ;;
  }

  dimension: in_from_internet {
    type: number
    sql: ${TABLE}.in_from_internet ;;
  }

  dimension: in_from_same_availability_zone {
    type: number
    sql: ${TABLE}.in_from_same_availability_zone ;;
  }

  dimension: out_to_internet_first_10tb {
    type: number
    sql: ${TABLE}.out_to_internet_first_10tb ;;
  }

  dimension: out_to_internet_next_100tb {
    type: number
    sql: ${TABLE}.out_to_internet_next_100tb ;;
  }

  dimension: out_to_internet_next_350tb {
    type: number
    sql: ${TABLE}.out_to_internet_next_350tb ;;
  }

  dimension: out_to_internet_next_40tb {
    type: number
    sql: ${TABLE}.out_to_internet_next_40tb ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
