resource "auth0_user" "new_user_1" {
  connection_name = auth0_connection.test_connection.name
  email           = "myuser1@auth0.com"
  username        = "username1"
  email_verified  = true
  password        = "MyPass123$"
}

resource "auth0_user" "new_user_2" {
  connection_name = auth0_connection.test_connection.name
  email           = "myuser2@auth0.com"
  username        = "username2"
  email_verified  = true
  password        = "MyPass123$"
}

resource "auth0_organization" "test_organization" {
  name         = "my-org-inc"
  display_name = "My Org Inc."

  branding {
    logo_url = "https://avatars.githubusercontent.com/u/44938?s=280&v=4"
    colors = {
      primary         = "#f2f2f2"
      page_background = "#e1e1e1"
    }
  }
}

resource "auth0_organization_connections" "test_org_connections" {
  organization_id = auth0_organization.test_organization.id

  enabled_connections {
    connection_id              = auth0_connection.test_connection.id
    assign_membership_on_login = true
  }
}

resource "auth0_organization_members" "my_members" {
  organization_id = auth0_organization.test_organization.id
  members         = [auth0_user.new_user_1.id, auth0_user.new_user_2.id]
}
