resource "aws_wafv2_web_acl" "george" {
  name  = "web-acl-association-george"
  scope = "REGIONAL"

  default_action {
    allow {}
  }

  visibility_config {
    cloudwatch_metrics_enabled = false
    metric_name                = "friendly-metric-name"
    sampled_requests_enabled   = false
  }
}

resource "aws_wafv2_web_acl_association" "george" {
  resource_arn = module.loadbalancer_sg
  web_acl_arn  = module.loadbalancer_sg
}
