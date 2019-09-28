provider "aws" {
   region  = "us-east-1"
}

module "s3_bucket" {
  source			= "git::https://github.com/Githubdonkey/teffaformPacker//modules/s3"
  createS3_public	= false
  createS3_private	= false
}

module "aws_instance" {
  source				= "git::https://github.com/Githubdonkey/teffaformPacker//modules/ec2"
  createInstanceLinux	= false
  createInstanceWin		= true
}