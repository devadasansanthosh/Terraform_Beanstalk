resource "aws_elastic_beanstalk_application" "ebs-app" {
  name = "emp-application"
  description = "emp boot app in elastic beanstalk environment"
  appversion_lifecycle {
    service_role = "arn:aws:iam::010575015992:role/beanstalk-role"
    max_count = 128
    delete_source_from_s3 = false
  }
}