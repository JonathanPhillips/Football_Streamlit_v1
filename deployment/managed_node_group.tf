resource "aws_eks_node_group" "example" {
  cluster_name    = aws_eks_cluster.example.name
  node_group_name = "streamlit-node-group"
  node_role_arn   = aws_iam_role.aws_eks_node_group.arn
  subnet_ids      = aws_eks_cluster.example.vpc_config[0].subnet_ids

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  # Optionally, specify the instance types, AMI version, etc.
  instance_types = ["t2.micro"]

  # Set disk size
  disk_size = 20

  # Optionally, specify tags
  tags = {
    "Name" = "streamlit-eks-node-group"
  }

  # Optionally, specify launch template
  # launch_template {
  #   id      = aws_launch_template.example.id
  #   version = "$Latest"
  # }

  # Optionally, define taints or labels
  # taints {
  #   key    = "example"
  #   value  = "true"
  #   effect = "NO_SCHEDULE"
  # }
}

# Optionally, if using a launch template
# resource "aws_launch_template" "example" {
#   name = "example-template"
#
#   block_device_mappings {
#     device_name = "/dev/xvda"
#
#     ebs {
#       volume_size = 20
#     }
#   }
#
#   image_id      = "ami-xxxxxxxxxxxxxxxxx"  # Replace with your EKS optimized AMI
#   instance_type = "t3.medium"
#
#   # Other launch template configurations...
# }