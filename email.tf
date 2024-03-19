variable SENDGRID_KEY { default = "" }

resource "auth0_email_provider" "my_email_provider" {
  name                 = "sendgrid"
  enabled              = true
  default_from_address = "accounts@sonatype.com"

  credentials {
    api_key = "${var.SENDGRID_KEY}"
  }
}

resource "auth0_email_template" "my_email_template" {
  depends_on = [auth0_email_provider.my_email_provider]

  template                = "reset_email"
  body                    = file("./code/email-template.html")
  from                    = "Sonatype Team <noreply@sonatype.com>"
  result_url              = null
  subject                 = "{% if user.user_metadata.isInvited == true %} Getting Started with Sonatype SaaS platform {% else %} Reset your password {% endif %}"
  syntax                  = "liquid"
  url_lifetime_in_seconds = 432000
  enabled                 = true
}
