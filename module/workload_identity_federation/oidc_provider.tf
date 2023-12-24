resource "google_iam_workload_identity_pool_provider" "github-provider" {
  workload_identity_pool_id          = google_iam_workload_identity_pool.identity_pool.workload_identity_pool_id
  workload_identity_pool_provider_id = var.provider_name
  display_name                       = var.display_name
  description                        = var.provider_description
  attribute_mapping                  = var.attribute_mapping
  oidc {
    issuer_uri = var.oidc_token_issuer
  }


}