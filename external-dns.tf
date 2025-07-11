module "external_dns" {
  source = "git::https://github.com/DNXLabs/terraform-aws-eks-external-dns.git"

  cluster_name                     = local.cluster_name
  cluster_identity_oidc_issuer     = module.eks.cluster_oidc_issuer_url
  cluster_identity_oidc_issuer_arn = module.eks.oidc_provider_arn

  settings = {
    "policy" = "sync" # Modify how DNS records are sychronized between sources and providers.
  }
}
