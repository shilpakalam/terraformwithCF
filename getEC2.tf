/*provider "aws"{
    access_key  = "AKIAZSVMJTLYPMFLGMHK"
    secret_key  = "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"
    region      = "us-east-1"
}

resource "aws_iam_user" "user1" {
    name    = "user1"
}*/

resource "aws_instance" "getEC2"{
    ami             = "ami-087c17d1fe0178315"
    instance_type   = "t2.micro"
    key_name        =  "ec2Prj1"
    tags            = {
        name        = "tfec2"
    }
}