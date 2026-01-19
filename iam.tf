resource "aws_iam_role" "lambda_role" {
  name = "lambda-execution-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "secrets_manager_policy" {
  name   = "secrets-access-policy"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action   = ["secretsmanager:GetSecretValue"],
        Effect   = "Allow",
        Resource = "*"
      }
    ]
  })
}