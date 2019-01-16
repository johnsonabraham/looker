view: vmware_vcenter_state_info {
  sql_table_name: public.vmware_vcenter_state_info ;;

  dimension: vcenter_id {
    type: string
    sql: ${TABLE}.vcenter_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
