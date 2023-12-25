resource "google_iam_workload_identity_pool" "identity_pool" {
  workload_identity_pool_id = var.identity_pool_name
  disabled                  = false

}

