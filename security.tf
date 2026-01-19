resource "aws_waf_web_acl" "example_acl" {
  name        = "example-waf-acl"
  default_action {
    type = "ALLOW"
  }
  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "example-metrics"
    sampled_requests_enabled   = true
  }
}