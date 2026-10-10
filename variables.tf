variable "cloudformation_stack_sets" {
  description = <<EOT
Map of cloudformation_stack_sets, attributes below
Required:
    - name
Optional:
    - administration_role_arn
    - call_as
    - capabilities
    - description
    - execution_role_name
    - parameters
    - permission_model
    - region
    - tags
    - tags_all
    - template_body
    - template_url
    - auto_deployment (block):
        - depends_on_stack_sets (optional)
        - enabled (optional)
        - retain_stacks_on_account_removal (optional)
    - managed_execution (block):
        - active (optional)
    - operation_preferences (block):
        - failure_tolerance_count (optional)
        - failure_tolerance_percentage (optional)
        - max_concurrent_count (optional)
        - max_concurrent_percentage (optional)
        - region_concurrency_type (optional)
        - region_order (optional)
EOT

  type = map(object({
    name                    = string
    administration_role_arn = optional(string)
    call_as                 = optional(string)
    capabilities            = optional(set(string))
    description             = optional(string)
    execution_role_name     = optional(string)
    parameters              = optional(map(string))
    permission_model        = optional(string)
    region                  = optional(string)
    tags                    = optional(map(string))
    tags_all                = optional(map(string))
    template_body           = optional(string)
    template_url            = optional(string)
    auto_deployment = optional(object({
      depends_on_stack_sets            = optional(list(string))
      enabled                          = optional(bool)
      retain_stacks_on_account_removal = optional(bool)
    }))
    managed_execution = optional(object({
      active = optional(bool)
    }))
    operation_preferences = optional(object({
      failure_tolerance_count      = optional(number)
      failure_tolerance_percentage = optional(number)
      max_concurrent_count         = optional(number)
      max_concurrent_percentage    = optional(number)
      region_concurrency_type      = optional(string)
      region_order                 = optional(list(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudformation_stack_sets : (
        v.operation_preferences == null || (v.operation_preferences.failure_tolerance_count == null || (v.operation_preferences.failure_tolerance_count >= 0))
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudformation_stack_sets : (
        v.operation_preferences == null || (v.operation_preferences.failure_tolerance_percentage == null || (v.operation_preferences.failure_tolerance_percentage >= 0 && v.operation_preferences.failure_tolerance_percentage <= 100))
      )
    ])
    error_message = "must be between 0 and 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudformation_stack_sets : (
        v.operation_preferences == null || (v.operation_preferences.max_concurrent_count == null || (v.operation_preferences.max_concurrent_count >= 1))
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudformation_stack_sets : (
        v.operation_preferences == null || (v.operation_preferences.max_concurrent_percentage == null || (v.operation_preferences.max_concurrent_percentage >= 1 && v.operation_preferences.max_concurrent_percentage <= 100))
      )
    ])
    error_message = "must be between 1 and 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudformation_stack_sets : (
        v.operation_preferences == null || (v.operation_preferences.region_order == null || (alltrue([for x in v.operation_preferences.region_order : can(regex("^[0-9A-Za-z-]{1,128}$", x))])))
      )
    ])
    error_message = ""
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

