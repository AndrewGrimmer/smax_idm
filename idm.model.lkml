connection: "smax_idm"

include: "*.view.lkml"                       # include all views in this project

explore: token_store {}

explore: abstract_user {}

explore: organizations {}
