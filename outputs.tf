output "cloudformation_stack_sets_id" {
  description = "Map of id values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudformation_stack_sets_administration_role_arn" {
  description = "Map of administration_role_arn values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.administration_role_arn if v.administration_role_arn != null && length(v.administration_role_arn) > 0 }
}
output "cloudformation_stack_sets_arn" {
  description = "Map of arn values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudformation_stack_sets_auto_deployment" {
  description = "Map of auto_deployment values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => one(v.auto_deployment) if v.auto_deployment != null && length(v.auto_deployment) > 0 }
}
output "cloudformation_stack_sets_call_as" {
  description = "Map of call_as values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.call_as if v.call_as != null && length(v.call_as) > 0 }
}
output "cloudformation_stack_sets_capabilities" {
  description = "Map of capabilities values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.capabilities if v.capabilities != null && length(v.capabilities) > 0 }
}
output "cloudformation_stack_sets_description" {
  description = "Map of description values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cloudformation_stack_sets_execution_role_name" {
  description = "Map of execution_role_name values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.execution_role_name if v.execution_role_name != null && length(v.execution_role_name) > 0 }
}
output "cloudformation_stack_sets_managed_execution" {
  description = "Map of managed_execution values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => one(v.managed_execution) if v.managed_execution != null && length(v.managed_execution) > 0 }
}
output "cloudformation_stack_sets_name" {
  description = "Map of name values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudformation_stack_sets_operation_preferences" {
  description = "Map of operation_preferences values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => one(v.operation_preferences) if v.operation_preferences != null && length(v.operation_preferences) > 0 }
}
output "cloudformation_stack_sets_parameters" {
  description = "Map of parameters values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "cloudformation_stack_sets_permission_model" {
  description = "Map of permission_model values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.permission_model if v.permission_model != null && length(v.permission_model) > 0 }
}
output "cloudformation_stack_sets_region" {
  description = "Map of region values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudformation_stack_sets_stack_set_id" {
  description = "Map of stack_set_id values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.stack_set_id if v.stack_set_id != null && length(v.stack_set_id) > 0 }
}
output "cloudformation_stack_sets_tags" {
  description = "Map of tags values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cloudformation_stack_sets_tags_all" {
  description = "Map of tags_all values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "cloudformation_stack_sets_template_body" {
  description = "Map of template_body values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.template_body if v.template_body != null && length(v.template_body) > 0 }
}
output "cloudformation_stack_sets_template_url" {
  description = "Map of template_url values across all cloudformation_stack_sets, keyed the same as var.cloudformation_stack_sets"
  value       = { for k, v in aws_cloudformation_stack_set.cloudformation_stack_sets : k => v.template_url if v.template_url != null && length(v.template_url) > 0 }
}

