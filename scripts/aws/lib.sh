# SPDX-License-Identifier: copyleft-next-0.3.1

import_aws_terraform_vars()
{
	AWSREGION=$CONFIG_TERRAFORM_AWS_REGION
	AWSAVREGION=$CONFIG_TERRAFORM_AWS_AV_REGION
	AWSAMIOWNER=$CONFIG_TERRAFORM_AWS_AMI_OWNER
	AWSNAMESEARCH=$CONFIG_TERRAFORM_AWS_NS
	AWSVIRTTYPE=$CONFIG_TERRAFORM_AWS_VIRT_TYPE
	AWSINSTANCETYPE=$CONFIG_TERRAFORM_AWS_INSTANCE_TYPE
}
