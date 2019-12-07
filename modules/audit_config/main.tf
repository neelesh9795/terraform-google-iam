resource "google_project_iam_audit_config" "project_iam_authoritative" {
  count   = length(var.audit_log_config)
  project = var.project
  service = var.audit_log_config[count.index].service
  audit_log_config {
    log_type         = var.audit_log_config[count.index].log_type
    exempted_members = var.audit_log_config[count.index].exempted_members
  }
}
