resource "aws_iam_user" "lb" {
  name = "loadbalancer"

  tags = {
    tag-key = "newdevloper"
  }
}
