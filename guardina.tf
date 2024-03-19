resource "auth0_guardian" "guardian" {
  email         = false
  otp           = true
  policy        = "confidence-score"
  recovery_code = false
}
