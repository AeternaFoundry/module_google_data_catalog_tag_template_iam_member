resource "google_data_catalog_tag_template_iam_member" "data_catalog_tag_template_iam_members" {
  for_each = var.data_catalog_tag_template_iam_members

  member       = each.value.member
  role         = each.value.role
  tag_template = each.value.tag_template
  project      = each.value.project
  region       = each.value.region

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

