# This is an example of an Auth0 connection.

resource "auth0_connection" "test_connection" {
  name                 = "My-Test-Connection"
  is_domain_connection = true
  strategy             = "auth0"
  metadata = {
    key1 = "foo"
    key2 = "bar"
  }

  options {
    password_policy                = "excellent"
    brute_force_protection         = true
    enabled_database_customization = true
    import_mode                    = true
    requires_username              = true
    disable_signup                 = false
    custom_scripts = {
      get_user = file("./code/get-user.js")
      login    = file("./code/login.js")
    }

    configuration = {
      foo = "bar"
      bar = "baz"
    }

    upstream_params = jsonencode({
      "screen_name" : {
        "alias" : "login_hint"
      }
    })

    password_history {
      enable = true
      size   = 3
    }

    password_no_personal_info {
      enable = true
    }

    password_dictionary {
      enable     = true
      dictionary = ["password", "admin", "1234"]
    }

    password_complexity_options {
      min_length = 8
    }

    validation {
      username {
        min = 8
        max = 50
      }
    }
  }
}
