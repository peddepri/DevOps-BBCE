# main.tf

module "aws_infrastructure" {
  source = "./modules/aws_infrastructure"
  # Defina as variáveis ​​necessárias para a infraestrutura na AWS
  }

module "kubernetes_cluster" {
  source = "./modules/kubernetes_cluster"
  # Defina as variáveis ​​necessárias para o cluster do Kubernetes
}
