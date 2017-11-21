output "cloudtrail_id" {
  value = "${aws_cloudtrail.cloudtrail_default.id}"
}

output "cloudtrail_home_region" {
  value = "${aws_cloudtrail.cloudtrail_default.home_region}"
}

output "cloudtrail_arn" {
  value = "${aws_cloudtrail.cloudtrail_default.arn}"
}

output "cloudtrail_logs_arn" {
  value = "${aws_cloudwatch_log_group.log_group_default.arn}"
}

output "cloudtrail_sns_arn" {
  value = "${aws_sns_topic.sns_topic_default.arn}"
}

output "cloudtrail_bucket_id" {
  value = "${aws_s3_bucket.cloudtrail_bucket.id}"
}

output "cloudtrail_bucket_arn" {
  value = "${aws_s3_bucket.cloudtrail_bucket.arn}"
}
