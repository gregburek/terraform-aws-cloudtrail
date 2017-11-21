# AWS CloudTrail Terraform module with CloudWatch Alarms

This module will create a CloudTrail which is configured to send activity logs to a CloudWatch log group.

Additionally 11 CloudWatch alarms are created with alarm notifications sent to an SNS Topic.

## Usage

Ensure an alias is added to the `provider` within you terraform stack

```
provider "aws" {
  region = "eu-west-2"
  alias  = "london"
}
```
```
module "cloudtrail" {
  source = "git::https://github.com/david-wells-1/terraform-aws-module-cloudtrail.git"

  providers = {
    "aws" = "aws.london"
  }

  cloudtrail_name            = ""
  multi_region_trail         = true
  enable_logging             = true
  enable_log_file_validation = true
  cloudwatch_log_group       = ""
  sns_topic                  = ""
  bucket_name                = ""
}
```
## Author

Module managed by [David Wells](https://github.com/david-wells-1)

## License

Apache 2 Licensed. See LICENSE for full details.
