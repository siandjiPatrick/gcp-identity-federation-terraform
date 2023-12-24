resource "google_project_iam_member" "github_srv_with_workloadIdentityUser_role" {
  project = var.project_id
  member  = "serviceAccount:${google_service_account.github_service_account.email}"
  role    = "roles/iam.workloadIdentityUser"

}

resource "google_project_iam_member" "github_srv_with_run_serviceAgent_role" {
  project = var.project_id
  member  = "serviceAccount:${google_service_account.github_service_account.email}"
  role    = "roles/run.serviceAgent"

}

resource "google_service_account_iam_binding" "oidc_provider_role_for_srv_account" {
  service_account_id = google_service_account.github_service_account.name
  role               = "roles/iam.workloadIdentityUser"
  members             = [
   "principal://iam.googleapis.com/projects/142963639085/locations/global/workloadIdentityPools/github-pool/subject/assertion.sub",
   #"principal://iam.googleapis.com/projects/142963639085/locations/global/workloadIdentityPools/github-pool/attribute.repository/siandjiPatrick/gcp-workload-identity-federation-with-terraform"
#  "principal://iam.googleapis.com/projects/${var.project_number}/locations/global/workloadIdentityPools/${google_iam_workload_identity_pool.identity_pool.name}/subject/assertion.sub",
                     #   "principal://iam.googleapis.com/projects/${var.project_number}/locations/global/workloadIdentityPools/${google_iam_workload_identity_pool.identity_pool.name}/attribute.repository/${var.github_username}/${var.github_repository}"
                        ]
}

# resource "google_service_account_iam_member" "oidc_provider_repo_role_for_srv_account" {
#   service_account_id = google_service_account.github_service_account.name
#   role               = "roles/iam.workloadIdentityUser"
#   member             = "principal://iam.googleapis.com/projects/${var.project_number}/locations/global/workloadIdentityPools/${google_iam_workload_identity_pool.identity_pool.name}/attribute.repository/${var.github_username}/${var.github_repository}"
# }
