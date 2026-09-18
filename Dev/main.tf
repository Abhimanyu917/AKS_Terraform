module "abhi-rg" {
  source     = "../Module"
  rg_name    = "abhi-aksrg"
  location   = "East US"
  aks_name   = "abhi-aks"
  dns_prefix = "abhiaks1"
}
