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
  resource_arn = aws_api_gateway_stage.george.arn
  web_acl_arn  = aws_wafv2_web_acl.george.arn
}
