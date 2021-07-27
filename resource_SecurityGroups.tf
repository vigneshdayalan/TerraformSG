resource "aws_security_group" "dev-cohortcore-public" {
  description = "dev-core-cohort-core-service-api/CohortCoreServicePublicALBSecurityGroup"
  vpc_id      = "vpc-017655c08d8ceee3d"

  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    prefix_list_ids = [aws_ec2_managed_prefix_list.dev-users-publicip.id]
  }

  tags = {
    AutoOff         = "false",
    Confidentiality = "Public",
    CostCentre      = "tbc",
    Environment     = "dev",
    Location        = "gbr",
    Owner           = "exa",
    Project         = "Cohort API",
    Service         = "core"
  }
}

resource "aws_security_group" "dev-extractservice-public" {
  description = "dev-core-extract-service/ExtractServicePublicALBSecurityGroup"
  vpc_id      = "vpc-017655c08d8ceee3d"

  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    prefix_list_ids = [aws_ec2_managed_prefix_list.dev-users-publicip.id]
  }

  tags = {
    AutoOff         = "false",
    Confidentiality = "Public",
    CostCentre      = "tbc",
    Environment     = "dev",
    Location        = "gbr",
    Owner           = "exa",
    Project         = "Cohort API",
    Service         = "core"
  }
}

resource "aws_security_group" "dev-compiler-public" {
  description = "dev-core-compiler/CompilerPublicALBSecurityGroup"
  vpc_id      = "vpc-017655c08d8ceee3d"

  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    prefix_list_ids = [aws_ec2_managed_prefix_list.dev-users-publicip.id]
  }

  tags = {
    AutoOff         = "false",
    Confidentiality = "Public",
    CostCentre      = "tbc",
    Environment     = "dev",
    Location        = "gbr",
    Owner           = "exa",
    Project         = "Cohort API",
    Service         = "core"
  }
}

resource "aws_security_group" "dev-runtime-public" {
  description = "dev-core-runtime/RuntimePublicALBSecurityGroup"
  vpc_id      = "vpc-017655c08d8ceee3d"

  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    prefix_list_ids = [aws_ec2_managed_prefix_list.dev-users-publicip.id]
  }

  tags = {
    AutoOff         = "false",
    Confidentiality = "Public",
    CostCentre      = "tbc",
    Environment     = "dev",
    Location        = "gbr",
    Owner           = "exa",
    Project         = "Cohort API",
    Service         = "core"
  }
}
