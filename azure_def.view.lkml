view: azure_def {
  sql_table_name: public.azure_def ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cloudamize_instance_name {
    type: string
    sql: ${TABLE}.cloudamize_instance_name ;;
  }

  dimension: csp_instance_name {
    type: string
    sql: ${TABLE}.csp_instance_name ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension: instance_type_alias {
    type: string
    sql: ${TABLE}.instance_type_alias ;;
  }

  dimension: original_instance {
    type: string
    sql: ${TABLE}.original_instance ;;
  }

  dimension: os {
    type: string
    sql: ${TABLE}.os ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: region_alias {
    type: string
    sql: ${TABLE}.region_alias ;;
  }

  measure: count {
    type: count
    drill_fields: [id, csp_instance_name, cloudamize_instance_name]
  }
}
