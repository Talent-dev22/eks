module "external_secrets" {
  source  = "DNXLabs/eks-external-secrets/aws"
  version = "2.2.1"
  # insert the 3 required variables here

  cluster_name                     = local.cluster_name
  cluster_identity_oidc_issuer     = module.eks.cluster_oidc_issuer_url
  cluster_identity_oidc_issuer_arn = module.eks.oidc_provider_arn

}
