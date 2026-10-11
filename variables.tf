variable "identity_domains_api_keys" {
  description = <<EOT
Map of identity_domains_api_keys, attributes below
Required:
    - idcs_endpoint
    - key
    - schemas
Optional:
    - attribute_sets
    - attributes
    - authorization
    - description
    - ocid
    - resource_type_schema_version
    - tags (block):
        - key (required)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - urnietfparamsscimschemasoracleidcsextensionself_change_user (block):
        - allow_self_change (optional)
    - user (block):
        - ocid (optional)
        - value (optional)
EOT

  type = map(object({
    idcs_endpoint                = string
    key                          = string
    schemas                      = list(string)
    attribute_sets               = optional(list(string))
    attributes                   = optional(string)
    authorization                = optional(string)
    description                  = optional(string)
    ocid                         = optional(string)
    resource_type_schema_version = optional(string)
    tags = optional(list(object({
      key   = string
      value = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    urnietfparamsscimschemasoracleidcsextensionself_change_user = optional(object({
      allow_self_change = optional(bool)
    }))
    user = optional(object({
      ocid  = optional(string)
      value = optional(string)
    }))
  }))
}

