

output "workload_identity_provider" {
  value = google_iam_workload_identity_pool_provider.github-provider.name

}

output "provider_status" {
  value = google_iam_workload_identity_pool_provider.github-provider.state

}

output "service_account_email" {
  value = google_service_account.github_service_account.email

}
