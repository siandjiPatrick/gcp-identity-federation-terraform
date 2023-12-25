== Requirements

No requirements.

== Providers

The following providers are used by this module:

- [[provider_google]] <<provider_google,google>>

== Modules

No modules.

== Resources

The following resources are used by this module:

- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool[google_iam_workload_identity_pool.identity_pool] (resource)
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider[google_iam_workload_identity_pool_provider.github-provider] (resource)
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member[google_project_iam_member.github_srv_with_run_serviceAgent_role] (resource)
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member[google_project_iam_member.github_srv_with_workloadIdentityUser_role] (resource)
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account[google_service_account.github_service_account] (resource)
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_iam_binding[google_service_account_iam_binding.oidc_provider_role_for_srv_account] (resource)

== Required Inputs

No required inputs.
== Optional Inputs

The following input variables are optional (have default values):

=== [[input_attribute_mapping]] <<input_attribute_mapping,attribute_mapping>>

Description: n/a

Type: `map(string)`

Default:
[source,json]
----
{
  "attribute.aud": "assertion.aud",
  "attribute.repository": "assertion.repositoy",
  "google.subject": "assertion.sub"
}
----

=== [[input_display_name]] <<input_display_name,display_name>>

Description: n/a

Type: `string`

Default: `"github provider"`

=== [[input_github_repository]] <<input_github_repository,github_repository>>

Description: n/a

Type: `string`

Default: `"gcp-workload-identity-federation-with-terraform"`

=== [[input_github_username]] <<input_github_username,github_username>>

Description: n/a

Type: `string`

Default: `"siandjiPatrick"`

=== [[input_iam_members]] <<input_iam_members,iam_members>>

Description: ## iam params

Type: `list(string)`

Default:
[source,json]
----
[
  "principal://iam.googleapis.com/projects/142963639085/locations/global/workloadIdentityPools/github-pool/subject/assertion.sub",
  "principalSet://iam.googleapis.com/projects/142963639085/locations/global/workloadIdentityPools/github-pool/attribute.repository/siandjiPatrick/gcp-workload-identity-federation-with-terraform"
]
----

=== [[input_identity_pool_name]] <<input_identity_pool_name,identity_pool_name>>

Description: #### Workflow Identity Federation Params ##############

Type: `string`

Default: `"github-pool"`

=== [[input_oidc_token_issuer]] <<input_oidc_token_issuer,oidc_token_issuer>>

Description: n/a

Type: `string`

Default: `"https://token.actions.githubusercontent.com"`

=== [[input_project_id]] <<input_project_id,project_id>>

Description: ####### GCP Project parameters #############

Type: `string`

Default: `"terraform-patrickstyl"`

=== [[input_project_number]] <<input_project_number,project_number>>

Description: n/a

Type: `string`

Default: `"142963639085"`

=== [[input_provider_description]] <<input_provider_description,provider_description>>

Description: n/a

Type: `string`

Default: `"github OIDC identity pool provider for automated test"`

=== [[input_provider_name]] <<input_provider_name,provider_name>>

Description: n/a

Type: `string`

Default: `"github-provider"`

=== [[input_service_account_display_name]] <<input_service_account_display_name,service_account_display_name>>

Description: n/a

Type: `string`

Default: `"github service account"`

=== [[input_service_account_name]] <<input_service_account_name,service_account_name>>

Description: ############  Service Account params  #######################

Type: `string`

Default: `"github-service-account"`

== Outputs

The following outputs are exported:

=== [[output_provider_status]] <<output_provider_status,provider_status>>

Description: n/a

=== [[output_service_account_email]] <<output_service_account_email,service_account_email>>

Description: n/a

=== [[output_workload_identity_provider]] <<output_workload_identity_provider,workload_identity_provider>>

Description: n/a
