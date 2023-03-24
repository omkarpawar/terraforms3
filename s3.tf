provider "aws"{
  profile = "myaws"
  region ="us-east-2"
}

resource "aws_s3_bucket" "b"{
  bucket ="myawsbucket1234555443"
  acl ="private"
  
  tags ={
    Name       = "My_Bucket"
    Enviroment = "Dev"
  }
}
