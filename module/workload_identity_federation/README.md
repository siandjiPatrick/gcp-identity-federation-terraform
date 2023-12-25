== Requirements

No requirements.

== Providers

[cols="a,a",options="header,autowidth"]
|===
|Name |Version
|[[provider_google]] <<provider_google,google>> |n/a
|===

== Modules

No modules.

== Resources

[cols="a,a",options="header,autowidth"]
|===
|Name |Type
|https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool[google_iam_workload_identity_pool.identity_pool] |resource
|https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider[google_iam_workload_identity_pool_provider.github-provider] |resource
|https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member[google_project_iam_member.github_srv_with_run_serviceAgent_role] |resource
|https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member[google_project_iam_member.github_srv_with_workloadIdentityUser_role] |resource
|https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account[google_service_account.github_service_account] |resource
|https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_iam_binding[google_service_account_iam_binding.oidc_provider_role_for_srv_account] |resource
|===

== Inputs

[cols="a,a,a,a,a",options="header,autowidth"]
|===
|Name |Description |Type |Default |Required
|[[input_attribute_mapping]] <<input_attribute_mapping,attribute_mapping>>
|n/a
|`map(string)`
|

[source]
----
{
  "attribute.aud": "assertion.aud",
  "attribute.repository": "assertion.repositoy",
  "google.subject": "assertion.sub"
}
----

|no

|[[input_display_name]] <<input_display_name,display_name>>
|n/a
|`string`
|`"github provider"`
|no

|[[input_github_repository]] <<input_github_repository,github_repository>>
|n/a
|`string`
|`"gcp-workload-identity-federation-with-terraform"`
|no

|[[input_github_username]] <<input_github_username,github_username>>
|n/a
|`string`
|`"siandjiPatrick"`
|no

|[[input_iam_members]] <<input_iam_members,iam_members>>
|## iam params
|`list(string)`
|

[source]
----
[
  "principal://iam.googleapis.com/projects/142963639085/locations/global/workloadIdentityPools/github-pool/subject/assertion.sub",
  "principalSet://iam.googleapis.com/projects/142963639085/locations/global/workloadIdentityPools/github-pool/attribute.repository/siandjiPatrick/gcp-workload-identity-federation-with-terraform"
]
----

|no

|[[input_identity_pool_name]] <<input_identity_pool_name,identity_pool_name>>
|#### Workflow Identity Federation Params ##############
|`string`
|`"github-pool"`
|no

|[[input_oidc_token_issuer]] <<input_oidc_token_issuer,oidc_token_issuer>>
|n/a
|`string`
|`"https://token.actions.githubusercontent.com"`
|no

|[[input_project_id]] <<input_project_id,project_id>>
|####### GCP Project parameters #############
|`string`
|`"terraform-patrickstyl"`
|no

|[[input_project_number]] <<input_project_number,project_number>>
|n/a
|`string`
|`"142963639085"`
|no

|[[input_provider_description]] <<input_provider_description,provider_description>>
|n/a
|`string`
|`"github OIDC identity pool provider for automated test"`
|no

|[[input_provider_name]] <<input_provider_name,provider_name>>
|n/a
|`string`
|`"github-provider"`
|no

|[[input_service_account_display_name]] <<input_service_account_display_name,service_account_display_name>>
|n/a
|`string`
|`"github service account"`
|no

|[[input_service_account_name]] <<input_service_account_name,service_account_name>>
|############  Service Account params  #######################
|`string`
|`"github-service-account"`
|no

|===

== Outputs

[cols="a,a",options="header,autowidth"]
|===
|Name |Description
|[[output_provider_status]] <<output_provider_status,provider_status>> |n/a
|[[output_service_account_email]] <<output_service_account_email,service_account_email>> |n/a
|[[output_workload_identity_provider]] <<output_workload_identity_provider,workload_identity_provider>> |n/a
|===
