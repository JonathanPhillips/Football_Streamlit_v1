resource "aws_iam_policy" "eks_cluster_policy" {
  name        = "eks_cluster_policy"
  description = "EKS Cluster Policy"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "eks:*"
          // Add additional EKS-related actions as needed
        ],
        Effect   = "Allow",
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_policy" "eks_vpc_resource_controller" {
  name        = "eks_vpc_resource_controller"
  description = "EKS VPC Resource Controller Policy"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "ec2:CreateVpcEndpoint",
          "ec2:DeleteVpcEndpoints",
          // Add additional EC2 VPC-related actions as needed
        ],
        Effect   = "Allow",
        Resource = "*"
      },
    ]
  })
}

