resource "aws_elastic_beanstalk_application_version" "ebs-app-ver" {
  depends_on = ["aws_elastic_beanstalk_application.ebs-app"]
  application = "${aws_elastic_beanstalk_application.ebs-app.name}"
  bucket = "elasticbeanstalk-us-east-2-010575015992"
  key = "2020200TWb-empService-0.0.1-SNAPSHOT.jar"
  name = "v1"
}