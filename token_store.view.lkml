view: token_store {
  sql_table_name: token_store ;;

  dimension: token_id {
    sql: ${TABLE}.uuid ;;
  }
  dimension: user_id {
    sql: ${TABLE}.subject ;;
  }
  dimension: return_uri {
    sql:  SUBSTRING(${TABLE}.return_uri, length(${TABLE}.return_uri)-8, 9) ;;

    label: "Tenant"
  }
  dimension: last_update {
    sql:  ${TABLE}.last_update ;;

    type: date_time
  }
  dimension: expiration {
    sql: ${TABLE}.expiration ;;

    type: date_time
  }

  measure: LOGINCOUNT {
    type: count
    drill_fields: [return_uri]
  }
}
