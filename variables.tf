variable "data_catalog_tag_template_iam_members" {
  description = <<EOT
Map of data_catalog_tag_template_iam_members, attributes below
Required:
    - member
    - role
    - tag_template
Optional:
    - project
    - region
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    member       = string
    role         = string
    tag_template = string
    project      = optional(string)
    region       = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

