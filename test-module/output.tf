

output "workload_identity_provider" {
  value = module.workload_identity_federation.workload_identity_provider

}

output "provider_status" {
  value = module.workload_identity_federation.provider_status

}

output "service_account_email" {
  value = module.workload_identity_federation.service_account_email

}
