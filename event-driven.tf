resource "aws_eventbridge_rule" "example_rule" {
  name        = "example-event-rule"
  event_pattern = jsonencode({
    source = ["aws.s3"]
  })
}