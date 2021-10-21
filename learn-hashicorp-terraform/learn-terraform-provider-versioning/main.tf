provider "aws" {
  region = "eu-west-3"
  profile = "sleek-terraformcourse"
}

resource "random_pet" "petname" {
  length    = 5
  separator = "-"
}

resource "aws_s3_bucket" "sample" {
  bucket = random_pet.petname.id
  acl    = "public-read"

  # region = "eu-west-3"
}
