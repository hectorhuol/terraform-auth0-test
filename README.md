# Terrform for Auth0

This repo is currently just a POC/prototype for managing auth0 using Terraform

## Staging

To apply this using terraform:

```
cd tf/common
export AUTH0_DOMAIN=; export AUTH0_CLIENT_ID=; export AUTH0_CLIENT_SECRET=; TF_VAR_SENDGRID_KEY=; terraform apply
```

You will need to obtain the values for the environment variables yourself from `auth0` and a SendGrid test account. 
