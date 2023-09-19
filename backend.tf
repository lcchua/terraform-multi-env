# Comment out the below if you are working on local

terraform {
  backend "s3" {
    bucket = "sctp-ce2-tfstate-bkt"
    key    = "luqman-tf-workspace-act.tfstate"   #Change the value of this to yourname-tf-workspace-act.tfstate for  example
    region = "ap-southeast-1"
  }
}