resource "auth0_action" "my_action" {
  name    = "My Action"
  runtime = "node18"
  deploy  = true
  code    = file("./code/action.js")

  supported_triggers {
    id      = "post-login"
    version = "v3"
  }

  dependencies {
    name    = "lodash"
    version = "latest"
  }

  dependencies {
    name    = "request"
    version = "latest"
  }

  secrets {
    name  = "FOO"
    value = "Foo"
  }

  secrets {
    name  = "BAR"
    value = "Bar"
  }
}

resource "auth0_trigger_actions" "login_flow" {
  trigger = "post-login"

  actions {
    id           = auth0_action.my_action.id
    display_name = auth0_action.my_action.name
  }
}
