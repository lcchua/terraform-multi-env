# Comment out the below if you are working on local

terraform {
  backend "s3" {
    bucket = "sctp-ce3-tfstate-bucket-1"
    key    = "luqman-tf-workspace-act.tfstate"   #Change the value of this to yourname-tf-workspace-act.tfstate for  example
    region = "us-east-1"
  }
}