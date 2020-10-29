# Variable declaration 
variable "environment"{
    default = "default"
}


# provider info
provider "aws"{
    region = "us-east-1"
    version = "~> 2.46"
}

# define IAM user
resource "aws_iam_user" "my_iam_user"{
    name = "${local.iam_user_extension}_${var.environment}"

}


# Use locals if we do not wnat to override a variable
locals{
    iam_user_extension = "django_machan_updated"
}

