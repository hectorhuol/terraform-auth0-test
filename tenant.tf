resource "auth0_tenant" "tenant" {
  allow_organization_name_in_authentication_api = false
  allowed_logout_urls                           = []
  customize_mfa_in_postlogin_action             = false
  default_audience                              = null
  default_directory                             = auth0_connection.test_connection.name
  default_redirection_uri                       = null
  enabled_locales                               = ["en"]
  friendly_name                                 = "Sonatype"
  idle_session_lifetime                         = 72
  picture_url                                   = "https://www.sonatype.com/hubfs/PreFooter_logo.png"
  sandbox_version                               = "18"
  session_lifetime                              = 168
  support_email                                 = null
  support_url                                   = null
  flags {
    allow_legacy_delegation_grant_types    = false
    allow_legacy_ro_grant_types            = false
    allow_legacy_tokeninfo_endpoint        = false
    dashboard_insights_view                = false
    dashboard_log_streams_next             = false
    disable_clickjack_protection_headers   = true
    disable_fields_map_fix                 = false
    disable_management_api_sms_obfuscation = false
    enable_adfs_waad_email_verification    = false
    enable_apis_section                    = false
    enable_client_connections              = true
    enable_custom_domain_in_emails         = false
    enable_dynamic_client_registration     = false
    enable_idtoken_api2                    = false
    enable_legacy_logs_search_v2           = false
    enable_legacy_profile                  = false
    enable_pipeline2                       = false
    enable_public_signup_user_exists_error = true
    mfa_show_factor_list_on_enrollment     = true
    no_disclose_enterprise_connections     = false
    revoke_refresh_token_grant             = false
    use_scope_descriptions_for_consent     = false
  }
  session_cookie {
    mode = null
  }
  sessions {
    oidc_logout_prompt_enabled = false
  }
}
