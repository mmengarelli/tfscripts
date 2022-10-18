resource "databricks_user" "me" {
  user_name = "me@example.com"
}

data "databricks_group" "admins" {
  display_name = "admins"
}

resource "databricks_group_member" "i-am-admin" {
  group_id  = data.databricks_group.admins.id
  member_id = databricks_user.me.id
}
