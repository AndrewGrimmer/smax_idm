connection: "smax_idm"

include: "*.view.lkml"                       # include all views in this project

explore: token_store {
  join: abstract_user {
    sql_on: ${token_store.user_id} = ${abstract_user.database_id} ;;
    relationship: many_to_one
  }
}

explore: abstract_user {}

explore: organizations {}
