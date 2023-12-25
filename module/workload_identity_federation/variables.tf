#############  Service Account params  #######################
variable "service_account_name" {
  type    = string
  default = "github-service-account"
}

variable "service_account_display_name" {
  type    = string
  default = "github service account"
}


##### Workflow Identity Federation Params ##############
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

######## GCP Project parameters #############
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

### iam params
variable "iam_members" {
  type    = list(string)
  default = [ 
    
    "principal://iam.googleapis.com/projects/142963639085/locations/global/workloadIdentityPools/github-pool/subject/assertion.sub",
    "principalSet://iam.googleapis.com/projects/142963639085/locations/global/workloadIdentityPools/github-pool/attribute.repository/siandjiPatrick/gcp-workload-identity-federation-with-terraform"
  ]

}

