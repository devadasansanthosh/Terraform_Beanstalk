resource "aws_elastic_beanstalk_environment" "ebs-env" {
  depends_on = ["aws_elastic_beanstalk_application_version.ebs-app-ver"]
  name = "emp-application-dev"
  application = "${aws_elastic_beanstalk_application.ebs-app.name}"
  solution_stack_name = "64bit Amazon Linux 2018.03 v2.10.10 running Java 8"
  cname_prefix = "emp-application-dev"
  version_label = "${aws_elastic_beanstalk_application_version.ebs-app-ver.name}"

  setting {
        namespace = "aws:autoscaling:launchconfiguration"
        name      = "IamInstanceProfile"
        value     = "arn:aws:iam::010575015992:instance-profile/beanstalk-role"
    }	
}