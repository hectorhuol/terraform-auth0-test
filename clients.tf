resource "auth0_client" "test_client" {
  name            = "Test Application"
  description     = "My Test Application Created Through Terraform"
  app_type        = "regular_web"
  callbacks       = ["http://localhost:3000/callback"]
  oidc_conformant = true

  jwt_configuration {
    alg = "RS256"
  }
}

resource "auth0_client" "another_client" {
  name            = "Another Test Application"
  description     = "Another Test Application Created Through Terraform"
  app_type        = "regular_web"
  callbacks       = ["http://localhost:3000/callback"]
  oidc_conformant = true

  jwt_configuration {
    alg = "RS256"
  }
}
