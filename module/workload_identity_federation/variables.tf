variable "service_account_name" {
  type    = string
  default = "my-service-account"
}

variable "terraform_version" {
  type    = string
  default = "1.6.6"

}

variable "service_account_display_name" {
  type    = string
  default = "github service account"
}


variable "identity_pool_name" {
  type    = string
  default = "github-pool"
}

variable "oidc_token_issuer" {
  type    = string
  default = "https://token.actions.githubusercontent.com"
}

variable "display_name" {
  type    = string
  default = "github provider"
}

variable "provider_description" {
  type    = string
  default = "github OIDC identity pool provider for automated test"
}

variable "attribute_mapping" {
  type = map(string)
  default = {
    "google.subject"       = "assertion.sub"
    "attribute.aud"        = "assertion.aud"
    "attribute.repository" = "assertion.repositoy"
  }

}

variable "provider_name" {
  type    = string
  default = "github-provider"
}

variable "project_id" {
  type    = string
  default = "terraform-patrickstyl"
}

variable "project_number" {
  type    = string
  default = "142963639085"

}

variable "github_username" {
  type    = string
  default = "siandjiPatrick"

}

variable "github_repository" {
  type    = string
  default = "gcp-workload-identity-federation-with-terraform"

}