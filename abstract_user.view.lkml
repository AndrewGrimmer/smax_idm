view: abstract_user {
  sql_table_name: abstract_user ;;

  dimension: database_id {
    sql:  ${TABLE}.uuid ;;

    primary_key: yes
    label: "Database ID"
  }

  dimension: company {
    sql: ${TABLE}.organization ;;

    label: "Company ID"
  }

  dimension: name {
    sql:  ${TABLE}.display_name ;;
  }
}
