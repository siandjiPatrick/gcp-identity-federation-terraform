resource "google_service_account" "github_service_account" {
  account_id   = var.service_account_name
  display_name = var.service_account_display_name
  description  = "${var.service_account_display_name} used to manage gcp resources "


}