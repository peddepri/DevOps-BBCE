# aws_infrastructure.tf

provider "aws" {
  region = var.aws_region
}

# VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = true
  enable_dns_hostnames = true
}

# Subredes públicas
resource "aws_subnet" "public" {
  count = length(var.public_subnet_cidr_blocks)
  vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr_blocks[count.index]
  availability_zone = element(var.availability_zones, count.index)
}

# Grupos de security
resource "aws_security_group" "app" {
  name_prefix = "app-sg-"
  description = "Security group for the application"
  vpc_id      = aws_vpc.main.id

  # Definir as regras de segurança de acordo com suas necessidades
}

# Crie mais recursos conforme necessário, como instâncias EC2, bases de dados, etc.