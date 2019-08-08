view: organizations {
  sql_table_name: organizations ;;

  dimension: uuid {
    sql:${TABLE}.uuid ;;

    label: "Organization ID"
  }

  dimension: display_name {
    sql:  ${TABLE}.display_name ;;

    label: "Name"
  }
 }
