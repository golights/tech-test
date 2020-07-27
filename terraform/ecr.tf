#
#  Create a container registry in ECR
#
resource "aws_ecr_repository" "ecr" {
  name = var.image_name
}
