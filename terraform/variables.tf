# AWS Infrastructure Variables
variable "aws_region" {
  description = "A região da AWS onde serão criados os recursos."
  default     = "us-west-2"  # Mude isso de acordo com suas necessidades
}

variable "vpc_cidr_block" {
  description = "A direção IP do VPC no formato CIDR."
  default     = "10.0.0.0/16"  # Mude isso de acordo com suas necessidades
}

variable "public_subnet_cidr_blocks" {
  description = "Lista de direções IP de subredes públicas no formato CIDR."
  default     = ["10.0.1.0/24", "10.0.2.0/24"]  # Mude isso de acordo com suas necessidades
}

variable "availability_zones" {
  description = "Lista de zonas de disponibilidade da AWS para subredes públicas."
  default     = ["us-west-2a", "us-west-2b"]  # Mude isso de acordo com suas necessidades
}

# EKS Cluster Variables
variable "eks_cluster_name" {
  description = "Nome do cluster do Kubernetes EKS."
  default     = "my-eks-cluster"  # Mude isso de acordo com suas necessidades
}

variable "eks_cluster_version" {
  description = "Versão do cluster do Kubernetes EKS."
  default     = "1.21"  # Mude isso de acordo com suas necessidades
}

variable "eks_node_desired_capacity" {
  description = "Capacidade desejada de nós no grupo de nós EKS."
  default     = 2  # Mude isso de acordo com suas necessidades
}

variable "eks_node_max_capacity" {
  description = "Capacidad máxima de nodos en el grupo de nodos EKS."
  default     = 5  # Mude isso de acordo com suas necessidades
}

variable "eks_node_min_capacity" {
  description = "Mude isso de acordo com suas necessidades."
  default     = 1  # Mude isso de acordo com suas necessidades
}

variable "eks_node_instance_type" {
  description = "Tipo de instância dos nós EKS."
  default     = "t2.medium"  # Mude isso de acordo com suas necessidades
}

# Agregar mais variáveis ​​conforme necessário para personalizar seus módulos