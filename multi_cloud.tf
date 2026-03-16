provider "aws"{
region = "us-east-1"
access_key = "mock_key"
secret_key = "mock_secret"
skip_credentials_validation = true
skip_requesting_account_id = true
}

provider "azurerm" {
features{}
skip_provider_registration = true
}

resource "aws_iam_user" "multi_cloud_admin"{
name = "Razan-Global-Security"
}

resource "aws_iam_group" "security_monitors"{
name = "Security-Monitors-Grooup"
}

resource "aws_iam_group_membership" "add_razan_to_group" {
name = "add-user-to-group"
users = [aws_iam_user.multi_cloud_admin.name]
group = aws_iam_group.security_monitors.name
}

resource "aws_iam_group_policy_attachment" "attach_readonly"{
group = aws_iam_group.security_monitors.name
policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

