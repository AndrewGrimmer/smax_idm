view: token_store {
  sql_table_name: token_store ;;

  dimension: token_id {
    sql: ${TABLE}.uuid ;;
  }
  dimension: user_id {
    sql: ${TABLE}.subject ;;
  }
}
