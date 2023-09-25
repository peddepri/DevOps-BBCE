module "aws_infrastructure" {
  source = "./modules/aws_infrastructure"
  aws_region                   = var.aws_region
  vpc_cidr_block               = var.vpc_cidr_block
  public_subnet_cidr_blocks    = var.public_subnet_cidr_blocks
  availability_zones           = var.availability_zones
  # Agregar mais variáveis ​​conforme necessário
}

module "kubernetes_cluster" {
  source = "./modules/kubernetes_cluster"
  eks_cluster_name             = var.eks_cluster_name
  eks_cluster_version          = var.eks_cluster_version
  eks_node_desired_capacity    = var.eks_node_desired_capacity
  eks_node_max_capacity        = var.eks_node_max_capacity
  eks_node_min_capacity        = var.eks_node_min_capacity
  eks_node_instance_type       = var.eks_node_instance_type
  # Agregar mais variáveis ​​conforme necessário
}
