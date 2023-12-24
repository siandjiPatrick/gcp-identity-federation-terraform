## Input Variable

### Default Value

- service_account_name         = "my-service-account"
- terraform_version            = "1.6.6"
- service_account_display_name = "github service account"
- provider_name                = "github-provider"
- identity_pool_name           = "github-pool"
- variable "oidc_token_issuer  = "https://token.actions.githubusercontent.com"
- variable "display_name       = "github provider"
- variable "description        = "gihub OIDC identity pool provider for automated test"
- attribute_mapping            = {
                                 "google.subject" = "assertion.sub"
                                 "attribute.aud"  = "assertion.aud"
                                 "attribute.repository"  = "assertion.repositoy"
                            }
