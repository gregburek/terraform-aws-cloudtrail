creates IAM for cloudwatch logs

hook-test-final-2

got all the outputs? - review them all


add aws resource for the s3 logging bucket - update iam permssions



default aes356 on the bucket

are , commas needed in the iam policy documents?

check syntax normall on all ie {aws_} no spaces in the code

change names to default?

add a version to the module

apply fmt


module "cloudtrail" {
  source                     = "git::https://github.com/david-wells-1/terraform-aws-module-cloudtrail.git"
  region                     = ""
  cloudtrail_name            = ""
  multi_region_trail         = 
  enable_logging             = 
  enable_log_file_validation = 
  cloudwatch_log_group       = ""
  sns_topic                  = ""
  bucket_name                = ""
}
