# AWS CloudTrail Terraform module with CloudWatch Alarms

This module will create a CloudTrail which is configured with an S3 bucket and to send logs to a CloudWatch Log Group.

Additionally, 11 CloudWatch alarms are created with alarm notifications sent to a created SNS Topic.

**Remember to subscribe to the SNS Topic**

## Module Input Variables

* `cloudtrail_name` - Specifies the name of the trail
* `cloudwatch_log_group` - The name of the created Log Group
* `sns_topic` - The friendly name for the created SNS topic
* `bucket_name` - The name of the S3 bucket used by CloudTrail

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
