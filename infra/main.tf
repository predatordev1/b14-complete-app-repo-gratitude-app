module "website_bucket" {
  source = "./modules/s3_bucket"
  bucket_name = var.website_bucket_name

}

module "app_ec2" {
  source             = "./modules/ec2_instance"
  ami_id             = var.ec2_ami_id
  instance_type      = var.ec2_instance_type
  subnet_id          = var.ec2_subnet_id
  security_group_ids = var.ec2_security_group_ids
  key_name           = var.ec2_key_name
}

module "eks_cluster_creation" {
  source = "./modules/eks_cluster"
  eks_cluster_name = var.eks_cluster_name
  subnet_ids       = var.subnet_ids
  environment      = var.environment
}